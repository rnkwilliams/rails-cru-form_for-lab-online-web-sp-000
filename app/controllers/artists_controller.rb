class ArtistsController < ApplicationController

    def new
        @artist = Artist.new
    end

    def show
        @artist = Artist.find(params[:id])
    end
    
    def create
        @artist = Artist.new(artist_params)
        @artist.save
        redirect_to artist_path(@artist)
    end

    def update
        @artist = Artist.find(params[:id])
        @artist = Artist.update(artist_params)
        redirect_to artist_path(@artist)
    end

    def edit
        @artist = Artist.find(params[:id])
    end

    private

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end
end
