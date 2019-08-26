class ContentController < ApplicationController

  def index
    @content = Content.order("RANDOM()").first
  end

end
