class RolesController < ApplicationController
  def index_role
    @list_of_roles = Role.all
    
    render("roles/index_roles.html.erb")
  end

  def show_role
    @role = Role.find(params[:id])
    
    render("roles/show_roles.html.erb")
  end

  def new_form_role
    
    render("roles/new_form_roles.html.erb")
  end

  def create_row_role
    
    @roles = Roles.new  
  
    r = Role.new
    r.character_name = params[:character_name]
    r.movie_id = params[:movie_id]
    r.actor_id = params[:actor_id]

    r.save

    render("roles/edit_form_roles.html.erb")
  end

  def edit_form_role
    @role = Role.find(params[:id])
    
    render("roles/edit_form_roles.html.erb")
  end

  def update_row_role
    
    @roles = Role.find(params[:id])
    
    r = Role.find(params[:id])

    r.character_name = params[:character_name]
    r.movie_id = params[:movie_id]
    r.actor_id = params[:actor_id]

    r.save

    render("roles/edit_form_roles.html.erb")
  end

  def destroy_role
    
    @roles = Role.find(params[:id])
    
    r = Role.find(params[:id])

    r.destroy
    
    r.save
    
    render("roles/destroy_roles.html.erb")
  end
end
