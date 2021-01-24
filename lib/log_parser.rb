class LogParser
  def process
    validate_file_path
    parse_file
  end

  def parse_file
    file = File.open(file_path)
  end

  private

  attr_reader :file_path

  def initialize(file_path)
    @file_path = file_path
  end

  def validate_file_path
    raise StandardError.new 'Filename can not be blank' if file_path == nil
    raise StandardError.new 'Provided file is not valid log file' if File.extname(file_path) != '.log'
  end
end
