class MoviesController < ApplicationController
  def index_movie
    @list_of_movies = Movie.order(:id => :desc)
    
    render("movies/index.html.erb")
  end

  def show_movie
    @movie = Movie.find(params[:id])
    
    render("movies/show.html.erb")
  end

  def new_form_movie
    
    render("movies/new_form.html.erb")
  end

  def create_row_movie
    @movie = Movie.new
    @movie.title = params[:the_title]
    @movie.year = params[:the_year]
    @movie.duration = params[:the_duration]
    @movie.description = params[:the_description]
    @movie.image_url = params[:the_image_url]
    @movie.director_id = params[:the_director_id]

    @movie.save

    render("movies/edit_form.html.erb")
  end

  def edit_form_movie
    @movie = Movie.find(params[:id])
    
    render("movies/edit_form.html.erb")
  end

  def update_row_movie
    
    @movie = Movie.find(params[:id])    
    
    @movie.title = params[:the_title]
    @movie.year = params[:the_year]
    @movie.duration = params[:the_duration]
    @movie.description = params[:the_description]
    @movie.image_url = params[:the_image_url]
    @movie.director_id = params[:the_director_id]

    render("movies/edit_form.html.erb")
  end

  def destroy_movie
    @movie = Movie.find(params[:id])

    @movie.destroy
    
    render("movies/destroy.html.erb")
  end
end
