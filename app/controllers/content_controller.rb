class ContentController < ApplicationController

  def index
    @content = Content.all
  end

  def new
    @content = Content.new
  end

  def create
    Content.create(content_params)
    redirect_to root_path
  end

  private

  def content_params
    params.require(:content).permit(:name, :description, :address)
  end

end
