class ListsController < ApplicationController

  before_action :find_list, only: [:show, :edit, :update, :destroy]

  def index
    @lists = List.all
    @list = List.new
  end

  def new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path, notice: "新增待辦事項"
    else
      render "new", alert: "新增待辦事項失敗"
    end
  end

  def show
  end

  def edit
  end

  def update
    if @list.update(list_params)
      redirect_to lists_path, notice: "修改待辦事項"
    else
      render "edit", alert: "修改待辦失敗"
    end
  end

  def destroy
    @list.destroy
    redirect_to lists_path, notice: "刪除待辦事項"
  end

  private

  def list_params
    params.require(:list).permit(:title)
  end

  def find_list
    @list = List.find(params[:id])
  end

end
