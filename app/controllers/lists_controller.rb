class ListsController < ApplicationController
    before_action :set_list, only: [ :show, :edit, :update, :destroy ]

    def index
      @lists = List.all
    end

    def show
    end

    def new
      @list = List.new
    end

    def create
      @list = List.new(list_params)
      if @list.save
        redirect_to @list, notice: "List successfully created!"
      else
        render :new, status: :unprocessable_entity
      end
    end

    def edit
    end

    def update
      if @list.update(list_params)
        redirect_to @list, notice: "List successfully updated!"
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @list.destroy
      redirect_to lists_path, notice: "List successfully deleted!"
    end

    private

    def set_list
      @list = List.find(params[:id])
    end

    def list_params
      params.require(:list).permit(:title)
    end
end
