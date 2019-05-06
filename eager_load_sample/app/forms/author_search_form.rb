class AuthorSearchForm

  attr_reader :results

  def submit
    @results = Author.eager_load(:posts).all
    @results = @results.order('upvotes')
  end

end
