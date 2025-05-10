class TasksController < ApplicationController
    before_action :set_list
  before_action :set_task, only: [ :edit, :update, :destroy ]

  def new
    @task = @list.tasks.build
  end

  def create
    @task = @list.tasks.build(task_params)
    if @task.save
      redirect_to @list, notice: "Task successfully created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to @list, notice: "Task successfully updated!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @task.destroy
    redirect_to @list, notice: "Task successfully deleted!"
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def set_task
    @task = @list.tasks.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:description, :done)
  end
end
