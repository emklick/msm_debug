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
    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    @director.save

    render("directors/new_form_directors.html.erb")
  end

  def edit_form_director
    @director = Director.find(params[:id])
    
    render("directors/edit_form_directors.html.erb")
  end

  def update_row_director
    @director = Director.find(params[:id])

    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    @director.save

    render("directors/edit_form_directors.html.erb")
  end

  def destroy_director
    @director = Director.find(params[:id])

    @director.destroy
    
    render("directors/destroy_directors.html.erb")
  end
end
