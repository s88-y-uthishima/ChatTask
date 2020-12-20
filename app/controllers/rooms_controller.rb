class RoomsController < ApplicationController
  before_action :authenticate_user!

  def index
    @room = Room.all.order(:id)
  end

  def show
    @room = Room.find(params[:id])
    @messages = @room.messages
  end
end
