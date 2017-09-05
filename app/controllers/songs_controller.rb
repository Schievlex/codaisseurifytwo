class SongsController < ApplicationController
	def index
	  	if params[:artist_id]
	    @songs = Artist.find(params[:artist_id]).songs
	  	else
	    @songs = Song.all
	    end 
     end

	def show
    	@song = Song.find(params[:id])
    end

    def new
	  	#artist = Artist.find(params[:artist_id])
	  	@song = Song.new
  	end

 	
  	def create
 	  @song = Song.create(song_params.merge(artist_id: params[:artist_id]))
      @song.save
      redirect_to artist_path(params[:artist_id])
    end




  	def edit
    @song = Song.find(params[:id])
  	end

  	def update
  		@song = Song.find(params[:id])

	    #song_params = params.require(:song).permit(:title, :album, :release_year)


	    if @song.update_attributes(song_params)
	       redirect_to @song
	    else
	       render 'edit'
	    end
  	end

  	def destroy
    @song = Song.find(params[:id])

    @song.destroy

    redirect_to songs_path
  end

  	private

  	def song_params
    params.require(:song).permit(:title, :album, :release_year, :artist_id)
  	end

end
	