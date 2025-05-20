class PlacesController < ApplicationController

  def index
    @places = Place.all 
    # find all Places rows
    # render places/index view
  end
  
  def show
    # find a Place
    @place = Place.find_by({"id" => params["id"]})
    @entries = Entry.where({"place_id" => @place["id"]})
    # render places/show view with details about Place
  end

  def new
    @place = Place.new
    # render view with new Place form
  end

  def create
    # start with a new Place
    @place = Place.new
    # assign user-entered form data to Place's columns
    @place["name"] = params["name"]
    # save Place row
    @place.save
    # redirect user
    redirect_to "/places"
  end
  
end
