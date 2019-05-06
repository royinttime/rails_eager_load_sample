class AuthorSearchForm

  include ActiveModel::Model

  attr_reader :results

  def submit
    return @results unless valid?

    @results = Author.eager_load(:posts).all
    @results = @results.order('upvotes')
  end

end
