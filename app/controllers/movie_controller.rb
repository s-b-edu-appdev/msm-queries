class MovieController < ActionController::Base
  def movie_list
    render({ :template => "misc_templates/movie_list"})
  end
  def movie_page
    render({ :template => "misc_templates/movie_page"})
  end
end
