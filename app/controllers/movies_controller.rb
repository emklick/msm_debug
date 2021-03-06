class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    
    render("movies/index.html.erb")
  end

  def show
    @movie = Movie.find(params[id])
    
    render("movies/show.html.erb")
  end

  def new_form
    
    
    render("movies/new_form.html.erb")
  end

  def create_row
    @movie.title = params[:the_title]
    @movie.year = params[:the_year]
    @movie.duration = params[:the_duration]
    @movie.description = params[:the_description]
    @movie.image_url = params[:the_image_url]
    @movie.director_id = params[:the_director_id]

    @movie.save

    render("movies/edit_form.html.erb")
  end

  def edit_form
    @movie = Movie.find(params[:id])
    
    render("movies/edit_form.html.erb")
  end

  def update_row
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    @movie.director_id = params[:director_id]

    render("movies/edit_form.html.erb")
  end

  def destroy
    @movie = Movie.find(params[:id])

    @movie.destroy
    
    render("movies/destroy.html.erb")
  end
end
