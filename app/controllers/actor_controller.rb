class ActorController < ActionController::Base
  def actor_list
    render({ :template => "misc_templates/actor_list"})
  end
end
