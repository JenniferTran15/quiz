class ContentController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @content = Content.all
  end

  def new
    @content = Content.new
  end

  def create
    current_user.places.create(content_params)
    redirect_to root_path
  end

  def show
    @content = Content.find(params[:id])
  end

  def edit
    @content = Content.find(params[:id])
  end

  def update
    @content = Content.find(params[:id])
    @content.update_attributes(content_params)
    redirect_to root_path
  end

  private

  def content_params
    params.require(:content).permit(:name, :description, :address)
  end

end
