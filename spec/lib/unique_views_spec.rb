require_relative '../../lib/unique_views'

describe UniqueViews do
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
  let(:unique_views) do
    {
      '/home'=>1,
      '/about/2'=>1
    }
  end
  subject { described_class.new(views_hash).call }

  it 'returns correct hash' do
    expect(subject).to eq(unique_views)
  end
end
