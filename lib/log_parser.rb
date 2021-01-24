class LogParser
  attr_reader :file_path, :views

  def process
    validate_file_path
    generate_views_hash
  end

  private

  def initialize(file_path)
    @file_path = file_path
    @views = Hash.new { |k, v| k[v] = [] }
  end

  def validate_file_path
    raise StandardError.new 'Filename can not be blank' if file_path == nil
    raise StandardError.new 'Provided file is not valid log file' if File.extname(file_path) != '.log'
  end

  def generate_views_hash
    File.open(file_path).each do |line|
      webpage, ip = line.split(' ')
      views[webpage] << ip
    end
    views
  end
end
