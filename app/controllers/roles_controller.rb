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
    @role = Role.new
    @role.character_name = params[:character_name]
    @role.movie_id = params[:movie_id]
    @role.actor_id = params[:actor_id]

    @role.save

    render("roles/edit_form_roles.html.erb")
  end

  def edit_form_role
    @role = Role.find(params[:id])
    
    render("roles/edit_form_roles.html.erb")
  end

  def update_row_role
    @role = Role.find(params[:id])

    @role.character_name = params[:character_name]
    @role.movie_id = params[:movie_id]
    @role.actor_id = params[:actor_id]

    @role.save

    render("roles/edit_form_roles.html.erb")
  end

  def destroy_role
    @role = Role.find(params[:id])

    @role.destroy
    
    render("roles/destroy_roles.html.erb")
  end
end
