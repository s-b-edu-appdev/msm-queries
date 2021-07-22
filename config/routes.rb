Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors", { :controller => "director", :action => "director_list" })
  get("/directors/youngest", { :controller => "director", :action => "youngest_director" })
  get("/directors/eldest", { :controller => "director", :action => "eldest_director" })
  get("/directors/:id", { :controller => "director", :action => "director_page" })
  get("/movies", { :controller => "movie", :action => "movie_list" })
  get("/movies/:id", { :controller => "movie", :action => "movie_page" })
  get("/actors", { :controller => "actor", :action => "actor_list" })
  get("/actors/:id", { :controller => "actor", :action => "actor_page" })
end
