class AuthorsController < ApplicationController

  def index
  	@form = AuthorSearchForm.new(author_search_form_params)
    @form.submit
    @pagy, @records = pagy @form.results
  end

  private

  def author_search_form_params
  	params.fetch(:author_search_form, {}).permit(:company)
  end

end
