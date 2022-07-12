#include "convert.hpp"
#include "utils/Instrumentor.hpp"

#include "spdlog/spdlog.h"

#include <nlohmann/json.hpp>

#include <boost/regex.hpp>

#include <iostream>

using json = nlohmann::json;

int main(int argc, char **argv)
{
    auto d = json::parse(R"({"happy": true, "pi": 3.141})");

    for(const auto& e : d)
    {
        std::cout << e << std::endl;
    }

    std::string line;
    boost::regex pat( "^Subject: (Re: |Aw: )*(.*)" );

    std::getline(std::cin, line);
    boost::smatch matches;
    if (boost::regex_match(line, matches, pat))
        std::cout << matches[2] << std::endl;

    spdlog::info("Hello, {}!", "World");

    std::cout << cToS(argv[0]);

    return 0;
}