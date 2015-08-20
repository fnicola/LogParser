require_relative "../log_parser.rb"
require_relative "../stats.rb"
require "test/unit"
require "stringio"

class TestStats < Test::Unit::TestCase

  #tests that the ranking of page per visit
  def test_page_ranking()
    file = "tests/fixtures/log2"
    p = LogParser::Parse.new(file)
    data = p.parse
    s = LogParser::Stats.new(data)
    ranking = s.page_ranking_visits
    assert_equal(ranking.length, 3)
    assert_equal(ranking.first[0], "/about")
    assert_equal(ranking.first[1], 8)
    assert_equal(ranking.last[0], "/index")
    assert_equal(ranking.last[1], 2)
  end

  def test_page_ranking_unique_visit()
    file = "tests/fixtures/log3"
    p = LogParser::Parse.new(file)
    data = p.parse
    s = LogParser::Stats.new(data)
    ranking = s.page_ranking_unique_visit
    assert_equal(ranking.length, 3)
    assert_equal(ranking.first[0], "/index")
    assert_equal(ranking.first[1], 3)
    assert_equal(ranking.last[0], "/contact")
    assert_equal(ranking.last[1], 1)
  end

end
