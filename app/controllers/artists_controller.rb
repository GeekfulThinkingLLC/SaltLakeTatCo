class ArtistsController < ApplicationController

# before_action :set_artists, only: [:show, :edit, :update, :destroy]

	def index
		@artists = Artist.all
	end

	def show
		@artist = Artist.find(params[:id])
	end

	def new
		@artist = Artist.new
	end

	def create
		# if logged_in?(:admin)
			@artist = Artist.new(artist_params)
			@artist.img = params[:img]
			respond_to do |format|
				if @artist.save
					format.html { redirect_to root_path, notice: "New artist created"}
				else
					format.html { redirect_to new_artist_path, notice: ""}
				end
			end
		# end
	end

	def edit
		@artist = Artist.find(params[:id])
	end

	def update
		logged_artist = Artist.find(params[:id])
		if (logged_in?(:artist) || logged_in?(:site_admin)) && (params[:id] == logged_artist)
			@artist = Artist.find(params[:id])
			respond_to do |format|
	      if @artist.update(artist_params)
	        format.html { redirect_to artists_path, notice: 'Successfully updated profile!' }
	      else
	        format.html { render :edit }
	      end
	    end
	  else
	  	redirect_to artists_path, alert: "Artist can only update own info"
	  end

	end

	def destroy
		@artist.destroy
			respond_to do |format|
				format.html { redirect_to artists_path, notice: "Review successfully deleted!" }
			end
	end

	private

	def set_artists
		@artist = Artist.find(params[:id])
	end

	def artist_params
		params.require(:artist).permit(:name, :img, :style, :description)
	end
end

