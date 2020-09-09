class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update, :destroy]

  def index
    @rooms = Room.all
  end

  def show
    @stations = @room.stations
  end

  def new
    @room = Room.new
    2.times{@room.stations.build}
     
  end

  def edit
    @room.stations.build
  end

  def create
    @room = Room.new(room_params)

    respond_to do |format|
      if @room.save
        format.html { redirect_to @room, notice: 'Room was successfully created.' }
        format.json { render :show, status: :created, location: @room }
      else
        format.html { render :new }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  

  private
   
    def set_room
      @room = Room.find(params[:id])
    end

    def room_params
      params.require(:room).permit(:name, :rent, :address, :age, :content, 
                                   stations_attributes:[:line, :minute, :name, :id, :room_id, :_destroy])
    end
end
