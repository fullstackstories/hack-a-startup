class TipoSuelosController < ApplicationController
  before_action :set_tipo_suelo, only: [:show, :edit, :update, :destroy]

  # GET /tipo_suelos
  # GET /tipo_suelos.json
  def index
    @tipo_suelos = TipoSuelo.all
  end

  # GET /tipo_suelos/1
  # GET /tipo_suelos/1.json
  def show
  end

  # GET /tipo_suelos/new
  def new
    @tipo_suelo = TipoSuelo.new
  end

  # GET /tipo_suelos/1/edit
  def edit
  end

  # POST /tipo_suelos
  # POST /tipo_suelos.json
  def create
    @tipo_suelo = TipoSuelo.new(tipo_suelo_params)

    respond_to do |format|
      if @tipo_suelo.save
        format.html { redirect_to @tipo_suelo, notice: 'Tipo suelo was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_suelo }
      else
        format.html { render :new }
        format.json { render json: @tipo_suelo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_suelos/1
  # PATCH/PUT /tipo_suelos/1.json
  def update
    respond_to do |format|
      if @tipo_suelo.update(tipo_suelo_params)
        format.html { redirect_to @tipo_suelo, notice: 'Tipo suelo was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_suelo }
      else
        format.html { render :edit }
        format.json { render json: @tipo_suelo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_suelos/1
  # DELETE /tipo_suelos/1.json
  def destroy
    @tipo_suelo.destroy
    respond_to do |format|
      format.html { redirect_to tipo_suelos_url, notice: 'Tipo suelo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_suelo
      @tipo_suelo = TipoSuelo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_suelo_params
      params.require(:tipo_suelo).permit(:nombre)
    end
end
