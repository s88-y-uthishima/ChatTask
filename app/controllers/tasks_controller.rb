class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def create
    @room = Room.find(params[:room_id])
    @task = Task.new(task_params)
    if @task.save
      redirect_to :root
    else
      render :new
    end
  end

  private
  def task_params
      params.require(:task).permit(:title).merge(room_id: @room.id)
  end
end
