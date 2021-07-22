class ActorController < ApplicationController
  def actor_list
    render({ :template => "misc_templates/actor_list"})
  end
  def actor_page
    @id = params.fetch("id")
    @actor_info = Actor.where(["id = ?" , @id.to_s]).last
    @character_list = Character.where(["actor_id = ?" , @id.to_s])
    # @movie_list = Movie.where(["director_id = ?" , @id.to_s])
    render({ :template => "misc_templates/actor_page"})
  end
end
