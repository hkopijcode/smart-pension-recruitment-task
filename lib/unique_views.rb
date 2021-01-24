class UniqueViews
  attr_reader :views_hash, :unique_views

  def call
    generate_unique_views
    sort_unique_views
  end

  private

  def initialize(views_hash)
    @views_hash = views_hash
    @unique_views = {}
  end

  def generate_unique_views
    views_hash.each do |k, v|
      unique_views[k] = v.uniq.count
    end
  end

  def sort_unique_views
    unique_views.sort_by { |webpage, count| -count }
  end
end
