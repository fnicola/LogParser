require_relative "../log_parser.rb"
require "test/unit"
require "stringio"

class TestParser < Test::Unit::TestCase

  #tests that parse every line in page and user
  def test_parse()
    file = "tests/fixtures/log1"
    p = LogParser::Parse.new(file)
    result = p.parse
    assert_equal(result.length, 2)
    assert_equal(result.first[:page], "/about")
    assert_equal(result.first[:user], "543.910.244.929")
  end
end
