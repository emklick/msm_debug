class DirectorsController < ApplicationController
  def index_director
    @list_of_directors = Director.order(:id => :desc)
    
    render("directors/index.html.erb")
  end

  def show_director
    @director = Director.find(params[:id])
    
    render("directors/show.html.erb")
  end

  def new_director
    
    render("roles/new_form.html.erb")
  end

  def create_row_director
    @director = Director.new
    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    @director.save

    render("directors/new_form.html.erb")
  end

  def edit_form_director
    @director = Director.find(params[:id])
    
    render("directors/edit_form.html.erb")
  end

  def update_row_director
    @director = Director.find(params[:id])

    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    @director.save

    render("directors/edit_form.html.erb")
  end

  def destroy_director
    @director = Director.find(params[:id])

    @director.destroy
    
    render("directors/destroy.html.erb")
  end
end
