class DirectorController < ApplicationController
  def director_list
    render({ :template => "misc_templates/director_list"})
  end
  def youngest_director
    render({ :template => "misc_templates/youngest_director"})
  end
  def eldest_director
    render({ :template => "misc_templates/eldest_director"})
  end
  def director_page
    @id = params.fetch("id")
    @director_info = Director.where(["id = ?" , @id.to_s]).last
    @movie_list = Movie.where(["director_id = ?" , @id.to_s])
    render({ :template => "misc_templates/director_page"})
  end
end
