class EntriesController < ApplicationController

  def index
    # here we'll define some @instance_variables to store data from the database for the views to use
    @entries = Entry.all

  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new
    @entry.word = params[:entry][:word]
    @entry.language = params[:entry][:language]
    @entry.definition = params[:entry][:definition]

    if @entry.save
      redirect_to entries_url
    end
  end

  def edit
    @entry = Entry.find(params[:id])
    # render :edit
  end

  def update
    @entry = Entry.find(params[:id])
    @entry.word = params[:entry][:word]
    @entry.language = params[:entry][:language]
    @entry.definition = params[:entry][:definition]

    if @entry.save
      redirect_to entries_url(params[:id])
      #ask an instructor about this part
    end
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    redirect_to entries_url(params[:id])
  end


end
