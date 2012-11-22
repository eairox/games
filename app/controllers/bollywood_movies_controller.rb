class BollywoodMoviesController < ApplicationController
  # GET /bollywood_movies
  # GET /bollywood_movies.json
  def index
    @bollywood_movies = BollywoodMovie.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @bollywood_movies }
    end
  end

  # GET /bollywood_movies/1
  # GET /bollywood_movies/1.json
  def show
    @bollywood_movie = BollywoodMovie.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @bollywood_movie }
    end
  end

  # GET /bollywood_movies/new
  # GET /bollywood_movies/new.json
  def new
    @bollywood_movie = BollywoodMovie.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @bollywood_movie }
    end
  end

  # GET /bollywood_movies/1/edit
  def edit
    @bollywood_movie = BollywoodMovie.find(params[:id])
  end

  # POST /bollywood_movies
  # POST /bollywood_movies.json
  def create
    @bollywood_movie = BollywoodMovie.new(params[:bollywood_movie])

    respond_to do |format|
      if @bollywood_movie.save
        format.html { redirect_to @bollywood_movie, :notice => 'Bollywood movie was successfully created.' }
        format.json { render :json => @bollywood_movie, :status => :created, :location => @bollywood_movie }
      else
        format.html { render :action => "new" }
        format.json { render :json => @bollywood_movie.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bollywood_movies/1
  # PUT /bollywood_movies/1.json
  def update
    @bollywood_movie = BollywoodMovie.find(params[:id])

    respond_to do |format|
      if @bollywood_movie.update_attributes(params[:bollywood_movie])
        format.html { redirect_to @bollywood_movie, :notice => 'Bollywood movie was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @bollywood_movie.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bollywood_movies/1
  # DELETE /bollywood_movies/1.json
  def destroy
    @bollywood_movie = BollywoodMovie.find(params[:id])
    @bollywood_movie.destroy

    respond_to do |format|
      format.html { redirect_to bollywood_movies_url }
      format.json { head :no_content }
    end
  end
end
