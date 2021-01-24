require_relative '../../lib/unique_views'

describe UniqueViews do
  let(:unique_views) do
    {
      '/home'=>2,
      '/about/2'=>1
    }
  end
  subject { described_class.new(views_hash).call }

  context 'when views_hash is sorted correctly' do
    let(:views_hash) do
      {
        '/home'=>['682.704.613.213',
                  '682.704.613.213',
                  '682.704.613.213',
                  '682.704.613.213',
                  '682.704.613.213',
                  '682.704.613.213',
                  '715.156.286.412'],
        '/about/2'=>['715.156.286.412',
                     '715.156.286.412',
                     '715.156.286.412']
        }
    end

    it 'returns correct hash' do
      expect(subject.to_a).to eq(unique_views.to_a)
    end
  end

  context 'when views_hash is not sorted' do
    let(:views_hash) do
      {
        '/about/2'=>['715.156.286.412',
                     '715.156.286.412',
                     '715.156.286.412'],
        '/home'=>['682.704.613.213',
                  '682.704.613.213',
                  '682.704.613.213',
                  '682.704.613.213',
                  '682.704.613.213',
                  '682.704.613.213',
                  '715.156.286.412']
        }
    end

    it 'returns correct hash' do
      expect(subject.to_a).to eq(unique_views.to_a)
    end
  end
end
