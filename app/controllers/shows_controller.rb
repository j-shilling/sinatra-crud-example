class ShowsController < ApplicationController
  # GET -> READ
  # POST -> CREATE
  # PUT/PATCH -> UPDATE
  # DELETE -> DELETE

  # CREATE
  get '/shows/new' do
    erb :new
  end

  post '/shows' do
    # Create a new show
    show = Show.new(shows_params)
    if show.save
      redirect '/shows'
    else
      puts "Save failed"
      redirect '/'
    end
  end

  # UPDATE
  get '/shows/:id/edit' do
    # Render an edit form
  end

  patch '/shows/:id' do
    # Update show DB
  end

  # READ
  get '/shows' do
    # Render index page
    @shows = Show.all
    erb :index
  end

  get '/shows/:id' do
    # Render show page
  end

  # DELETE

  delete '/shows/:id' do
    # Delete show in DB
  end

  private

  def shows_params
    { title: params[:title], author: params[:author] }
  end

end
