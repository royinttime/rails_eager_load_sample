class AuthorsController < ApplicationController

  def index
    @form = AuthorSearchForm.new
    @form.submit
    @pagy, @records = pagy @form.results
  end

end
