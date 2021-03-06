class ResidentialsController < ApplicationController
  before_action :set_residential, only: [:show, :edit, :update, :destroy]

  # GET /residentials
  # GET /residentials.json
  def index
    @residentials = Residential.all
  end

  # GET /residentials/1
  # GET /residentials/1.json
  def show
  end

  # GET /residentials/new
  def new
    @residential = Residential.new
  end

  # GET /residentials/1/edit
  def edit
  end

  # POST /residentials
  # POST /residentials.json
  def create
    @residential = Residential.new(residential_params)

    respond_to do |format|
      if @residential.save
        format.html { redirect_to @residential, notice: 'Residential was successfully created.' }
        format.json { render :show, status: :created, location: @residential }
      else
        format.html { render :new }
        format.json { render json: @residential.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /residentials/1
  # PATCH/PUT /residentials/1.json
  def update
    respond_to do |format|
      if @residential.update(residential_params)
        format.html { redirect_to @residential, notice: 'Residential was successfully updated.' }
        format.json { render :show, status: :ok, location: @residential }
      else
        format.html { render :edit }
        format.json { render json: @residential.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /residentials/1
  # DELETE /residentials/1.json
  def destroy
    @residential.destroy
    respond_to do |format|
      format.html { redirect_to residentials_url, notice: 'Residential was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_residential
      @residential = Residential.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def residential_params
      params.require(:residential).permit(:name, :address, :name_bank, :bank_account)
    end
end
