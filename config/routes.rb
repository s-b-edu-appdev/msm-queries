Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors", { :controller => "director", :action => "director_list" })
  get("/directors/youngest", { :controller => "director", :action => "youngest_director" })
  get("/directors/eldest", { :controller => "director", :action => "eldest_director" })
  get("/movies", { :controller => "movie", :action => "movie_list" })
  get("/actors", { :controller => "actor", :action => "actor_list" })
end
