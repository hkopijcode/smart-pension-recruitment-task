require_relative 'lib/log_parser'
require_relative 'lib/most_views'
require_relative 'lib/unique_views'

processed_hash = LogParser.new(ARGV[0]).process
most_views_hash = MostViews.new(processed_hash).call
unique_views_hash = UniqueViews.new(processed_hash).call

puts "Parsed #{ARGV[0]} correctly."
puts "\n"
puts "Most viewed sites:"
most_views_hash.each {|webpage, count| puts "#{webpage} #{count} visits"}
puts "\n"
puts "Unique views for each site:"
unique_views_hash.each {|webpage, count| puts "#{webpage} #{count} unique views"}
