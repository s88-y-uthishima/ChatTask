class CardsController < ApplicationController
  before_action :set_card, only: [:show, :edit, :update, :destroy]
  before_action :set_task, only: [:show, :edit, :update, :create]
  before_action :set_room, only: [:show, :edit, :update, :create, :destroy]

  def new
    @card = Card.new
    @task = Task.find(params[:task_id])
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      redirect_to room_path(@room)
    else
      render :new
    end
  end

  def show
  end

  def edit
    @tasks = Task.where(room: @room)
  end

  def update
    if @card.update(card_params)
      redirect_to room_path(@room)
    else
      render :edit
    end
  end

  def destroy
    @card.destroy
    redirect_to room_path(@room)
  end

  private
  def card_params
    params.require(:card).permit(:title, :address, :memo, :task_id)
  end

  def set_card
    @card = Card.find(params[:id])
  end

  def set_task
    @task = Task.find(params[:task_id])
  end

  def set_room
    @room = Room.find(params[:room_id])
  end
end
