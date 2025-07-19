class MediaItemsController < ApplicationController
  def index
    @media_items = MediaItem.all
  end

  def new
    @media_item = MediaItem.new
  end

  def create
    @media_item = MediaItem.new(media_item_params)
    if @media_item.save
      redirect_to media_items_path, notice: "Media item created."
    else
      render :new
    end
  end

  def show
    @media_item = MediaItem.find(params[:id])
  end

  def edit
    @media_item = MediaItem.find(params[:id])
  end

  def update
    @media_item = MediaItem.find(params[:id])
    if @media_item.update(media_item_params)
      redirect_to media_items_path, notice: "Media item updated."
    else
      render :edit
    end
  end

  def destroy
    @media_item = MediaItem.find(params[:id])
    @media_item.destroy
    redirect_to root_path, notice: "Media item deleted."
  end

  private

  def media_item_params
    params.require(:media_item).permit(:category, :release_year, :title, :description, :rating, :watchlist)
  end
end
