class RoomsController < ApplicationController
  before_action :authenticate_user!

  def index
    @rooms = Room.all.order(:id)
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to room_path(@room)
    else
      render :new
    end
  end

  def show
    @room = Room.find(params[:id])
    @messages = @room.messages
    @tasks = Task.where(room: @room).order('created_at ASC')
  end

  private

  def room_params
    params.require(:room).permit(:name)
  end
end
