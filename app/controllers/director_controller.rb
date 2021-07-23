class DirectorController < ApplicationController
  def director_list
    render({ :template => "misc_templates/director_list"})
  end
  def youngest_director
    director_info = Director.where.not({:dob => nil}).order(:dob => :asc).last
    @name = director_info.name
    @id = director_info.id
    @dob = director_info.dob
    render({ :template => "misc_templates/youngest_director"})
  end
  def eldest_director
    director_info = Director.where.not({:dob => nil}).order(:dob => :asc).first
    @name = director_info.name
    @id = director_info.id
    @dob = director_info.dob
    render({ :template => "misc_templates/eldest_director"})
  end
  def director_page
    @id = params.fetch("id")
    @director_info = Director.where({:id => @id.to_s}).last
    @movie_list = Movie.where({:director_id => @id.to_s})
    render({ :template => "misc_templates/director_page"})
  end
end
