class ListsController < ApplicationController

  def index
    @lists = List.all
  end


  def create
    @list = List.new(flat_params)
    if @list.save!
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end


  def new
    @list = List.new
  end


  def edit
    @list = List.find(params[:id])
  end


  def show
    @list = List.find(params[:id])
    @bookmarks = @list.bookmarks
  end


  def update
    @list = List.find(params[:id])
    if @list.update(list_params)
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path, status: :see_other
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
