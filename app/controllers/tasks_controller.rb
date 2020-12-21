class TasksController < ApplicationController
  before_action :set_task, only: [:edit, :update, :destroy]
  before_action :set_room, only: [:edit, :update, :destroy]

  def new
    @task = Task.new
  end

  def create
    @room = Room.find(params[:room_id])
    @task = Task.new(task_params)
    if @task.save
      redirect_to room_path(@room)
    else
      render :new
    end
  end
  
  def edit
  end
  
  def update
    if @task.update(task_params)
      redirect_to room_path(@room)
    else
      render :edit
    end 
  end
  
  def destroy
    @task.destroy
    redirect_to room_path(@room)
  end
  
  private
  def task_params
    params.require(:task).permit(:title).merge(room_id: @room.id)
  end
  
  def set_task
    @task = Task.find(params[:id])
  end
  
  def set_room
  @room = Room.find(params[:room_id])
  end
end
