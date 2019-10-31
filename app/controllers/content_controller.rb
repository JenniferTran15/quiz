class ContentController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @content = Content.all
  end

  def new
    @content = Content.new
  end

  def create
    current_user.contents.create(content_params)
    redirect_to root_path
  end

  def show
    @content = Content.find(params[:id])
  end

  def edit
    @content = Content.find(params[:id])

    if @content.user != current_user
      return render plain: 'Not Allowed', status: :forbidden
    end
  end

  def update
    @content = Content.find(params[:id])
    if @content.user != current_user
      return render plain: 'Not Allowed', status: :forbidden
    end 

    @content.update_attributes(content_params)
    redirect_to root_path
  end

  def destroy
    @content = Content.find(params[:id])
    if @content.user != current_user
      return render plain: 'Not Allowed', status: :forbidden
    end
    
    @content.destroy
    redirect_to root_path
  end

  private

  def content_params
    params.require(:content).permit(:name, :description, :address)
  end

end
