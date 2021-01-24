class MostViews
  attr_reader :views_hash, :most_views

  def call
    generate_most_views
    sort_most_views
  end

  private

  def initialize(views_hash)
    @views_hash = views_hash
    @most_views = {}
  end

  def generate_most_views
    views_hash.each do |k, v|
      most_views[k] = v.count
    end
  end

  def sort_most_views
    most_views.sort_by { |webpage, count| -count }
  end
end
