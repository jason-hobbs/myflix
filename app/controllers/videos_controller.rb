class VideosController < ApplicationController
  def index
    @categories = Category.all.order(:name)
  end

  def show
    @video = Video.find_by(id: params[:id])
  end
end
