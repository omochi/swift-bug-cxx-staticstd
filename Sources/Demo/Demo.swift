import CxxCats
import CxxStdlib

struct MessageError: Error {
    var description: String
}

func withCxxException<R>(_ body: (inout string_optional) -> R) throws -> R {
    var error = string_optional()

    let result = body(&error)

    if let message = Optional(fromCxx: error) {
        throw MessageError(description: String(message))
    }

    return result
}

func withCxxOptionalOrException<R>(_ body: (inout string_optional) -> some CxxOptional<R>) throws -> R {
    let result = try withCxxException(body)
    return Optional(fromCxx: result)!
}

public class WrapperCat {
    public init() throws {
        self.cat = try withCxxOptionalOrException { (e) in
            Cat_create(std.string("tama"), &e)
        }
    }

    var cat: Cat
}
