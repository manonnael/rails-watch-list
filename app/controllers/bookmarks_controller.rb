class BookmarksController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list

    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new[@list], status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.delete
    redirect_to list_path(:list_id)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :list_id, :movie_id)
  end
end
