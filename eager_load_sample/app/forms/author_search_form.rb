class AuthorSearchForm

  include ActiveModel::Model

  attr_accessor :company
  attr_reader :results

  def initialize(params = nil)
    super(params)
  end

  def submit
    return @results unless valid?

    @results = Author.eager_load(:company, :posts).all
    @results = @results.where(company: company) if company.present?
    @results.order('upvotes')
  end

  def options_for_companies
    @options_for_companies ||= Company.all.order('name ASC')
  end

end
