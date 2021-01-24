require_relative '../../lib/most_views'

describe MostViews do
  let(:most_views) do
    {
      '/home'=>7,
      '/about/2'=>3
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
                  '682.704.613.213',],
        '/about/2'=>['715.156.286.412',
                     '715.156.286.412',
                     '715.156.286.412']
        }
    end

    it 'returns correct hash' do
      expect(subject).to eq(most_views)
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
                  '682.704.613.213',]
        }
    end

    it 'returns correct hash' do
      expect(subject).to eq(most_views)
    end
  end
end
