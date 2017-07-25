class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all
    
    render("movies/index.html.erb")
  end

  def show
    @movie = Movie.find(params[:movie_id])
    
    render("movies/show.html.erb")
  end

  def new_form
    
    render("movies/new_form.html.erb")
  end

  def create_row
    
    @movie = Movie.new
    
    m = Movie.new
    m.title = params[:the_title]
    m.year = params[:the_year]
    m.duration = params[:the_duration]
    m.description = params[:the_description]
    m.image_url = params[:the_image_url]
    m.director_id = params[:the_director_id]

    m.save
    

    render("movies/edit_form.html.erb")
  end

  def edit_form
    @movie = Movie.find(params[:id])
    
    render("movies/edit_form.html.erb")
  end

  def update_row
    
    @movie = Movie.find(params[:id])
    
    m = Movie.find(params[:id])    
    
    m.title = params[:the_title]
    m.year = params[:the_year]
    m.duration = params[:the_duration]
    m.description = params[:the_description]
    m.image_url = params[:the_image_url]
    m.director_id = params[:the_director_id]
    
    m.save

    render("movies/edit_form.html.erb")
  end

  def destroy
    
    @movie = Movie.find(params[:id])
    
    m = Movie.find(params[:id])

    m.destroy
    
    m.save
    
    render("movies/destroy.html.erb")
  end
end
