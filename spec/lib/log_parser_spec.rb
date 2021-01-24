require_relative '../../lib/log_parser'

describe LogParser do
  subject { described_class.new(log_path) }

  context 'when valid file is provided' do
    let(:log_path) { 'spec/fixtures/sample.log'}

    it 'returns valid hash' do
      subject.process
      expect(subject.views).to eq({
        '/home'=>['682.704.613.213',
                  '682.704.613.213',
                  '682.704.613.213',
                  '682.704.613.213',
                  '682.704.613.213',
                  '682.704.613.213',
                  '682.704.613.213',],
        '/about/2'=>['715.156.286.412',
                     '715.156.286.412',
                     '715.156.286.412']
        })
      expect(subject.views.count).to eq(2)
    end
  end

  context 'when invalid file is provided' do
    let(:log_path) { 'spec/fixtures/invalid_sample.rb'}

    it 'raises valid error' do
      expect { subject.process }.to raise_error(StandardError, 'Provided file is not valid log file')
    end
  end

  context 'when file is not provided' do
    let(:log_path) {  }

    it 'raises valid error' do
      expect { subject.process }.to raise_error(StandardError, 'Filename can not be blank')
    end
  end
end
