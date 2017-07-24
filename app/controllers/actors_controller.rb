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
    
    a = Actor.new
    a.dob = params[:dob]
    a.name = params[:name]
    a.bio = params[:bio]
    a.image_url = params[:image_url]

    a.save

    render("actors/new_form_actors.html.erb")
  end

  def edit_form_actor
    @actor = Actor.find(params[:id])
    
    render("actors/edit_form_actors.html.erb")
  end

  def update_row_actor
    
    @actor = Actor.find(params[:id])

    a = Actor.find(params[:id])

    a.dob = params[:dob]
    a.name = params[:name]
    a.bio = params[:bio]
    a.image_url = params[:image_url]

    a.save

    render("actors/edit_form_actors.html.erb")
  end

  def destroy_actor
    
    @actor = Actor.find(params[:id]) 
    a = Actor.find(params[:id])

    a.destroy
    
    a.save
    
    render("actors/destroy_actors.html.erb")
  end
end
