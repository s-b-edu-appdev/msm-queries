class MovieController < ActionController::Base
  def movie_list
    render({ :template => "misc_templates/movie_list"})
  end
end
