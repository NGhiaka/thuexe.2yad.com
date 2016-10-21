class TravelsController < ApplicationController
  before_action :set_travel, only: [:show, :edit, :update, :destroy]

  # GET /travels
  # GET /travels.json
  def index
    if !current_user
      redirect_to root_path 
    else
      @travels = Travel.paginate(:page => params[:page], :per_page => 8).order('id DESC')
    end
  end

  # GET /travels/1
  # GET /travels/1.json
  def show
    if !current_user
      redirect_to root_path 
    end
  end

  # GET /travels/new
  def new
    if !current_user
      redirect_to root_path 
    else
      @travel = Travel.new
    end
  end

  # GET /travels/1/edit
  def edit
    if !current_user
      redirect_to root_path 
    end
  end

  # POST /travels
  # POST /travels.json
  def create
    if !current_user
      redirect_to root_path 
    else
      @travel = Travel.new(travel_params)

      respond_to do |format|
        if @travel.save
          format.html { redirect_to @travel, notice: 'Travel was successfully created.' }
          format.json { render :show, status: :created, location: @travel }
        else
          format.html { render :new }
          format.json { render json: @travel.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /travels/1
  # PATCH/PUT /travels/1.json
  def update
    respond_to do |format|
      if @travel.update(travel_params)
        format.html { redirect_to @travel, notice: 'Travel was successfully updated.' }
        format.json { render :show, status: :ok, location: @travel }
      else
        format.html { render :edit }
        format.json { render json: @travel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travels/1
  # DELETE /travels/1.json
  def destroy
    @travel.destroy
    respond_to do |format|
      format.html { redirect_to travels_url, notice: 'Travel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travel
      @travel = Travel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def travel_params
      params.require(:travel).permit(:title, :idtype, :image)
    end
end
