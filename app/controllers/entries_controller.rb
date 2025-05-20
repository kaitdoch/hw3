class EntriesController < ApplicationController

  def new
    @place = Place.find_by({"id" => params["place_id"]})
    # render view with new Place form
  end

  def create
    # start with a new entry
    @entry = Entry.new
    # assign user-entered form data to Entry's columns
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["occured_on"] = params["occured_on"]

    # assign relationship between place and entry
    @entry["place_id"] = params["place_id"]

    # save entry row
    @entry.save

    # redirect user
    redirect_to "/entries"
  end

end
