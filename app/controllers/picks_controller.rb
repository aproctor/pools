class PicksController < ApplicationController
  before_action :set_pick, only: [:show, :edit, :update, :destroy]

  # GET /picks
  # GET /picks.json
  def index
    @picks = Pick.all
  end

  # GET /picks/1
  # GET /picks/1.json
  def show
  end

  # GET /picks/new
  def new

    #Find Pool
    pool = nil
    if(params[:pool_id].present?)
      pool = Pool.find(params[:pool_id])
    else
      raise "Must supply a pool"
    end

    #Find or Create Player
    player = nil
    if(params[:player_id].present?)
      player = Player.find(params[:player_id])
    elsif(params[:player_name].present?)
      player = Player.create(:name => params[:player_name])
    else
      raise "Supply either player_id or player_name"
    end

    first_pick = nil
    pool.matches.each do |m|
      pick = Pick.first_or_initialize(:player => player, :pool => pool, :match => m)
      pick.winner = 0
      pick.save!
      first_pick ||= pick
    end
    @pick = first_pick

    #redirect_to edit_pick_path(@pick)
  end

  # GET /picks/1/edit
  def edit
  end

  # POST /picks
  # POST /picks.json
  def create
    @pick = Pick.new(pick_params)

    respond_to do |format|
      if @pick.save
        format.html { redirect_to @pick, notice: 'Pick was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pick }
      else
        format.html { render action: 'new' }
        format.json { render json: @pick.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /picks/1
  # PATCH/PUT /picks/1.json
  def update
    respond_to do |format|
      if @pick.update(pick_params)
        format.html { redirect_to @pick, notice: 'Pick was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pick.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /picks/1
  # DELETE /picks/1.json
  def destroy
    @pick.destroy
    respond_to do |format|
      format.html { redirect_to picks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pick
      @pick = Pick.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pick_params
      params.require(:pick).permit(:player_id, :match_id, :pool_id, :winner)
    end
end
