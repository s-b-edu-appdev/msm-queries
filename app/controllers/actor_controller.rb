class ActorController < ActionController::Base
  def actor_list
    render({ :template => "misc_templates/actor_list"})
  end
  def actor_page
    @id = params.fetch("id")
    render({ :template => "misc_templates/actor_page"})
  end
end
