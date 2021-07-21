class DirectorController < ActionController::Base
  def director_list
    render({ :template => "misc_templates/director_list"})
  end
  def youngest_director
    render({ :template => "misc_templates/youngest_director"})
  end
  def eldest_director
    render({ :template => "misc_templates/eldest_director"})
  end
end
