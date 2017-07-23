Rails.application.routes.draw do
  # Route for bare domain:
  get("/", { :controller => "movies", :action => "index_movie" })

  # Routes for the Director resource:
  # CREATE
  get("/directors/new_form", { :controller => "directors", :action => "new_form_director" })
  get("/create_director", { :controller => "directors", :action => "create_row_director" })

  # READ
  get("/directors", { :controller => "directors", :action => "index_director" })
  get("/directors/:id", { :controller => "directors", :action => "show_director" })

  # UPDATE
  get("/directors/:id/edit_form", { :controller => "directors", :action => "edit_form_director" })
  get("/update_director/:id", { :controller => "directors", :action => "update_row_director" })

  # DELETE
  get("/delete_director/:id", { :controller => "directors", :action => "destroy_director" })
  #------------------------------

  # Routes for the Movie resource:
  # CREATE
  get("/movies/new_form", { :controller => "movies", :action => "new_form_movie" })
  get("/create_movie", { :controller => 'movies', :action => "create_row_movie" })

  # READ
  get("/movies", { :controller => "movies", :action => "index_movie" })
  get("/movies/:id", { :controller => "movies", :action => "show_movie" })

  # UPDATE
  get("/movies/:id/edit_form", { :controller => "movies", :action => "edit_form_movie" })
  get("/update_movie/:id", { :controller => "movies", :action => "update_row_movie" })

  # DELETE
  get("/delete_movie/:id", { :controller => "movies", :action => "destroy_movie" })
  #------------------------------

  # Routes for the Role resource:
  # CREATE
  get("/roles/new_form", { :controller => "roles", :action => "new_form_role" })
  get("/create_role", { :controller => "roles", :action => "create_row_role" })

  # READ
  get("/roles", { :controller => "roles", :action => "index_role" })
  get("/roles/:id", { :controller => "roles", :action => "show_role" })

  # UPDATE
  get("/roles/:id/edit_form", { :controller => "roles", :action => "edit_form_role" })
  get("/update_role/:id", { :controller => "roles", :action => "update_row_role" })

  # DELETE
  get("/delete_role/:id", { :controller => "roles", :action => "destroy_role" })
  #------------------------------

  # Routes for the Actor resource:
  # CREATE
  get("/actors/new_form", { :controller => "actors", :action => "new_form_actor" })
  get("/create_actor", { :controller => "actors", :action => "create_row_actor" })

  # READ
  get("/actors", { :controller => "actors", :action => "index_actor" })
  get("/actors/:id", { :controller => "actors", :action => "show_actor" })

  # UPDATE
  get("/actors/:id/edit_form", { :controller => "actors", :action => "edit_form_actor" })
  get("/update_actor/:id", { :controller => "actors", :action => "update_row_actor" })

  # DELETE
  get("/delete_actor/:id", { :controller => "actors", :action => "destroy" })
  #------------------------------
  mount WebGit::Engine, at: "/rails/git"
end
