Rails.application.routes.draw do
  get("/places", {:controller => "places", :action => "index"})
  get("/entries", {:controller => "entries", :action => "index"})
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources "places"
  # get("/places", {:controller => "palces", :action => "index"})
  # get("/places/new", {:controller => "places", :action => "new"})
  # get("places/:id", {:controller => "places", :action => "show"})
  # post("/places", {:controller => "places", :action => "create"})

  resources "entries"
  # get("/entries", {:controller => "entries", :action => "new"})
  # get("/entries", {:controller => "entries", :action => "create"})

  # Defines the root path route ("/")
  #get("/", { :controller => "articles", :action => "index" })
end
