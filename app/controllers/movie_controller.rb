class MovieController < ApplicationController
  def movie_list
    render({ :template => "misc_templates/movie_list"})
  end
  def movie_page
    @id = params.fetch("id")
    render({ :template => "misc_templates/movie_page"})
  end
end
