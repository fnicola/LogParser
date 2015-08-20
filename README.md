# Log Parser
## Introduction
This is a simple ruby script, that given a log in the format:

`<name_of_the_page> <ip_user>`

is able to give some statistics about the popularity of the pages.

### Parser
The class Parse, given a path of the log, loads all the line of the logs, splitting the information in `:page` and `:user`

### Stats
* General ranking of the pages per popularity
* Ranking of the pages popularity based on unique visits (for the given log we have just to remove duplicates and do the same calculation as in the other stats.

### Tests
All the methods are tested, with basic unit tests.

## How to run the script
Make sure that the script has the permission to run

`chmod +x script.rb`

then, to run the script:

`./script.rb ruby_app/webserver.log`

## How to run the tests
There is no Rakefile and no test framework so run them like that:

`ruby tests/test_log_parser.rb`

`ruby tests/test_stats.rb`
