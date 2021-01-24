require_relative '../../lib/most_views'

describe MostViews do
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
  let(:most_views) do
    {
      '/home'=>7,
      '/about/2'=>3
    }
  end
  subject { described_class.new(views_hash).call }

  it 'returns correct hash' do
    expect(subject).to eq(most_views)
  end
end
