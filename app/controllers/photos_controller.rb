class PhotosController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
 # before_action :correct_user, only: [:destroy]


  
  
  def new
    @photo = Photo.new
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def create
    @album = Album.find(params[:photo][:album_id].to_i)
    
    @photo =Photo.create(photo_params)
    if @photo.save
      flash[:success] = "Photo created!"
      #redirect_to albums_path
      redirect_to @album
      
    else
      render 'new'
    end
    
    
    
  end

  

  

  def destroy
    id = params[:id]
    id = (params[:photo_ids] || []) if(id == "destroy_multiple")
    #ids = params[:photo_ids] || params[:id]
    @photo = Photo.find(id.first)
    @album = @photo.album

    @album.coverimg = "nopic.jpg"
    @album.save
    
    Photo.destroy id if id
    flash[:success] = "Photo deleted"
    redirect_to request.referrer || albums_path
  end
  
  private
  def photo_params
    params.require(:photo).permit(:album_id,:picture)
  end
  
  def correct_user
    @photo = Photo.find_by(id: params[:id])
    
    redirect_to albums_path if @photo.album.nil?
  end
end
