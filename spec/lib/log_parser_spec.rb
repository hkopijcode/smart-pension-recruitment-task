require_relative '../../lib/log_parser'

describe LogParser do
  subject { described_class.new(log_path).process }

  context 'when valid file is provided' do
    let(:log_path) { 'spec/fixtures/sample.log'}
    # TODO
  end

  context 'when invalid file is provided' do
    let(:log_path) { 'spec/fixtures/invalid_sample.rb'}

    it 'raises valid error' do
      expect { subject }.to raise_error(StandardError, 'Provided file is not valid log file')
    end
  end

  context 'when file is not provided' do
    let(:log_path) {  }

    it 'raises valid error' do
      expect { subject }.to raise_error(StandardError, 'Filename can not be blank')
    end
  end
end
