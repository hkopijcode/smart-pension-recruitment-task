require_relative 'lib/log_parser'

processed_hash = LogParser.new(ARGV[0]).process
