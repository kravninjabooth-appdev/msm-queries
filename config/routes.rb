Rails.application.routes.draw do
  
  get("/directors/eldest", {:controller => "directors", :action => "wisest"})

  get("/directors/:an_id", {:controller => "directors", :action => "director_details"})
  
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", {:controller => "directors", :action => "index"})

  #get("/directors/youngest", {:controller => "directors", :action => "novice"})

  get("/movies", {:controller => "movies", :action => "movie_list"})
  
  #get("/actors", {:controller => "actors", :action => "actor_list"})

end
