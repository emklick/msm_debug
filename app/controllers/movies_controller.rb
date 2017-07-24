class MoviesController < ApplicationController
  def index_movie
    @list_of_movies = Movie.all
    
    render("movies/index_movies.html.erb")
  end

  def show_movie
    @movie = Movie.find(params[:movieid])
    
    render("movies/show_movies.html.erb")
  end

  def new_form_movie
    
    render("movies/new_form_movies.html.erb")
  end

  def create_row_movie
    
    @movie = Movie.new
    
    m = Movie.new
    m.title = params[:the_title]
    m.year = params[:the_year]
    m.duration = params[:the_duration]
    m.description = params[:the_description]
    m.image_url = params[:the_image_url]
    m.director_id = params[:the_director_id]

    m.save
    

    render("movies/edit_form_movies.html.erb")
  end

  def edit_form_movie
    @movie = Movie.find(params[:id])
    
    render("movies/edit_form_movies.html.erb")
  end

  def update_row_movie
    
    @movie = Movie.find(params[:id])
    
    m = Movie.find(params[:id])    
    
    m.title = params[:the_title]
    m.year = params[:the_year]
    m.duration = params[:the_duration]
    m.description = params[:the_description]
    m.image_url = params[:the_image_url]
    m.director_id = params[:the_director_id]
    
    m.save

    render("movies/edit_form_movies.html.erb")
  end

  def destroy_movie
    
    @movie = Movie.find(params[:id])
    
    m = Movie.find(params[:id])

    m.destroy
    
    m.save
    
    render("movies/destroy_movies.html.erb")
  end
end
