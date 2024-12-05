#pragma once

#include <string>
#include <optional>

using string_optional = std::optional<std::string>;

class Cat {
public:
    int foo;
};

std::optional<Cat> Cat_create(const std::string & name, std::optional<std::string> & e);
