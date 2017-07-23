class ActorsController < ApplicationController
  def index_actor
    @list_of_actors = Actor.all
    
    render("actors/index_actors.html.erb")
  end

  def show_actor
    @actor = Actor.find(params[:id])
    
    render("actors/show_actors.html.erb")
  end

  def new_form_actor
    
    render("actors/new_form_actors.html.erb")
  end

  def create_row_actor
    @actor = Actor.new
    @actor.dob = params[:dob]
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]

    @actor.save

    render("actors/new_form_actors.html.erb")
  end

  def edit_form_actor
    @actor = Actor.find(params[:id])
    
    render("actors/edit_form_actors.html.erb")
  end

  def update_row_actor
    @actor = Actor.find(params[:id])

    @actor.dob = params[:dob]
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]

    @actor.save

    render("actors/edit_form_actors.html.erb")
  end

  def destroy_actor
    @actor = Actor.find(params[:id])

    @actor.destroy
    
    render("actors/destroy_actors.html.erb")
  end
end
