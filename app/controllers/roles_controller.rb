class RolesController < ApplicationController
  def index
    @list_of_roles = Role.all
    
    render("roles/index.html.erb")
  end

  def show
    @role = Role.find(params[:id])
    
    render("roles/show.html.erb")
  end

  def new_form
    
    render("roles/new_form.html.erb")
  end

  def create_row
    
    @roles = Roles.new  
  
    r = Role.new
    r.character_name = params[:character_name]
    r.movie_id = params[:movie_id]
    r.actor_id = params[:actor_id]

    r.save

    render("roles/edit_form.html.erb")
  end

  def edit_form
    @role = Role.find(params[:id])
    
    render("roles/edit_form.html.erb")
  end

  def update_row
    
    @roles = Role.find(params[:id])
    
    r = Role.find(params[:id])

    r.character_name = params[:character_name]
    r.movie_id = params[:movie_id]
    r.actor_id = params[:actor_id]

    r.save

    render("roles/edit_form.html.erb")
  end

  def destroy
    
    @roles = Role.find(params[:id])
    
    r = Role.find(params[:id])

    r.destroy
    
    r.save
    
    render("roles/destroy.html.erb")
  end
end
