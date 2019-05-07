class AuthorSearchForm

  attr_reader :results

  def submit
    @results = Author.eager_load(:posts).all.order('upvotes')
  end

end
