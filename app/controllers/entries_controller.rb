class EntriesController < ApplicationController

  def new
    @entry = Entry.find_by({"id" => params["entry_id"]})
    # render view with new Place form
  end

  def create
    # start with a new Place
    @entry = Entry.new
    # assign user-entered form data to Entry's columns
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["occured_on"] = params["occured_on"]
    # save Place row
    @entry.save
    # redirect user
    redirect_to "/entries"
  end

end
