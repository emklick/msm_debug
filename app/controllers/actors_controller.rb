class ActorsController < ApplicationController
  def index
    @actors = Actor.all
    
    render("actors/index.html.erb")
  end

  def show
    @actor = Actor.find(params[:id])
    
    render("actors/show.html.erb")
  end

  def new_form
    
    render("actors/new_form.html.erb")
  end

  def create_row
    @actor = Actor.new
    @actor.dob = params[:dob]
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]

    @actor.save

    render("actors/new_form.html.erb")
  end

  def edit_form
    @actor = Actor.find(params[:id])
    
    render("actors/edit_form.html.erb")
  end

  def update_row
    @actor = Actor.find(params[:id])

    @actor.dob = params[:dob]
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]

    @actor.save

    render("actors/edit_form.html.erb")
  end

  def destroy
    @actor = Actor.find(params[:id])

    @actor.destroy
    
    render("actors/destroy.html.erb")
  end
end
