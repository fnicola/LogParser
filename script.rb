#!/usr/bin/env ruby

require_relative "log_parser.rb"
require_relative "stats.rb"

file_path = ARGV[0]

log = LogParser::Parse.new(file_path)
data = log.parse
stats = LogParser::Stats.new(data)
print "** list of webpages with most page views ordered from most pages views to less page views ** \n"
stats.page_ranking_visits.each{|page| print page[0].to_s+ " "+page[1].to_s+" visits \n"}
print "** list of webpages with most unique page views also ordered ** \n"
stats.page_ranking_unique_visit.each{|page| print page[0].to_s+ " "+page[1].to_s+" visits \n"}
