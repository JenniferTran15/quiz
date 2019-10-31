class PhotosController < ApplicationController
  before_action :authenticate_user!


  def create
    @content = Content.find(params[:content_id])
    @content.photos.create(photo_params.merge(user: current_user))
    redirect_to content_path(@content)
  end


  private

  def photo_params
    params.require(:photo).permit(:caption, :picture)
  end
end
