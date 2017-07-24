class DirectorsController < ApplicationController
  def index_director
    @list_of_directors = Director.all
    
    render("directors/index_directors.html.erb")
  end

  def show_director
    @director = Director.find(params[:id])
    
    render("directors/show_directors.html.erb")
  end

  def new_form_director
    
    render("directors/new_form_directors.html.erb")
  end

  def create_row_director
    @director = Director.new
    
    d = Director.new
    d.dob = params[:dob]
    d.name = params[:name]
    d.bio = params[:bio]
    d.image_url = params[:image_url]

    d.save

    render("directors/new_form_directors.html.erb")
  end

  def edit_form_director
    @director = Director.find(params[:id])
    
    render("directors/edit_form_directors.html.erb")
  end

  def update_row_director
    @director = Director.find(params[:id])
  
    d = @director

    d.dob = params[:dob]
    d.name = params[:name]
    d.bio = params[:bio]
    d.image_url = params[:image_url]

    d.save

    render("directors/edit_form_directors.html.erb")
  end

  def destroy_director
    @director = Director.find(params[:id])
    
    d = @director

    d.destroy
    
    d.save
    
    render("directors/destroy_directors.html.erb")
  end
end
