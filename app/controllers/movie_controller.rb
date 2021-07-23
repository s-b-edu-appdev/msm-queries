class MovieController < ApplicationController
  def movie_list
    render({ :template => "misc_templates/movie_list"})
  end
  def movie_page
    @id = params.fetch("id")
    @movie_info = Movie.where({:id => @id.to_s}).last
    render({ :template => "misc_templates/movie_page"})
  end
end
