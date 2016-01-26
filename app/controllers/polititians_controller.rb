class PolititiansController < ApplicationController
  before_action :set_polititian, only: [:show, :edit, :update, :destroy]

  # GET /polititians
  # GET /polititians.json
  def index
    @polititians = Polititian.all
  end

  # GET /polititians/1
  # GET /polititians/1.json
  def show
    @pundit = Polititian.find_by(params[:id])
  end

  # GET /polititians/new
  def new
    @polititian = Polititian.new
  end

  # GET /polititians/1/edit
  def edit
  end

  # POST /polititians
  # POST /polititians.json
  def create
    @polititian = Polititian.new(polititian_params)

    respond_to do |format|
      if @polititian.save
        format.html { redirect_to admin_panel_url, notice: 'Polititian was successfully created.' }
        format.json { render :show, status: :created, location: @polititian }
      else
        format.html { render :new }
        format.json { render json: @polititian.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /polititians/1
  # PATCH/PUT /polititians/1.json
  def update
    respond_to do |format|
      if @polititian.update(polititian_params)
        format.html { redirect_to admin_panel_url, notice: 'Polititian was successfully updated.' }
        format.json { render :show, status: :ok, location: @polititian }
      else
        format.html { render :edit }
        format.json { render json: @polititian.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /polititians/1
  # DELETE /polititians/1.json
  def destroy
    @polititian.destroy
    respond_to do |format|
      format.html { redirect_to admin_panel_url, notice: 'Polititian was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_polititian
      @polititian = Polititian.find(params[:id])
    end
    
    def 

    # Never trust parameters from the scary internet, only allow the white list through.
    def polititian_params
      params.require(:polititian).permit(:name, :avatar, :feature_image, :twitter_handle, :link)
    end
end
