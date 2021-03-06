class RoomActsController < ApplicationController
  before_action :set_room_act, only: [:show, :edit, :update, :destroy]

  # GET /room_acts
  # GET /room_acts.json
  def index
    @room_acts = RoomAct.all
  end

  # GET /room_acts/1
  # GET /room_acts/1.json
  def show
  end
  def room_total
    RoomAct.sum(:amount)
  end

  # GET /room_acts/new
  def new
    @room_act = RoomAct.new
  end

  # GET /room_acts/1/edit
  def edit
  end

  # POST /room_acts
  # POST /room_acts.json
  def create
    @room_act = RoomAct.new(room_act_params)

    respond_to do |format|
      if @room_act.save
        format.html { redirect_to @room_act, notice: 'Room act was successfully created.' }
        format.json { render :show, status: :created, location: @room_act }
      else
        format.html { render :new }
        format.json { render json: @room_act.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /room_acts/1
  # PATCH/PUT /room_acts/1.json
  def update
    respond_to do |format|
      if @room_act.update(room_act_params)
        format.html { redirect_to @room_act, notice: 'Room act was successfully updated.' }
        format.json { render :show, status: :ok, location: @room_act }
      else
        format.html { render :edit }
        format.json { render json: @room_act.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /room_acts/1
  # DELETE /room_acts/1.json
  def destroy
    @room_act.destroy
    respond_to do |format|
      format.html { redirect_to room_acts_url, notice: 'Room act was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_act
      @room_act = RoomAct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def room_act_params
      params.require(:room_act).permit(:Name, :Amount, :Desc, :Time)
    end
end
