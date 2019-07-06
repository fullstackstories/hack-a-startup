class TipoCultivosController < ApplicationController
  before_action :set_tipo_cultivo, only: [:show, :edit, :update, :destroy]

  # GET /tipo_cultivos
  # GET /tipo_cultivos.json
  def index
    @tipo_cultivos = TipoCultivo.all
  end

  # GET /tipo_cultivos/1
  # GET /tipo_cultivos/1.json
  def show
  end

  # GET /tipo_cultivos/new
  def new
    @tipo_cultivo = TipoCultivo.new
  end

  # GET /tipo_cultivos/1/edit
  def edit
  end

  # POST /tipo_cultivos
  # POST /tipo_cultivos.json
  def create
    @tipo_cultivo = TipoCultivo.new(tipo_cultivo_params)

    respond_to do |format|
      if @tipo_cultivo.save
        format.html { redirect_to @tipo_cultivo, notice: 'Tipo cultivo was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_cultivo }
      else
        format.html { render :new }
        format.json { render json: @tipo_cultivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_cultivos/1
  # PATCH/PUT /tipo_cultivos/1.json
  def update
    respond_to do |format|
      if @tipo_cultivo.update(tipo_cultivo_params)
        format.html { redirect_to @tipo_cultivo, notice: 'Tipo cultivo was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_cultivo }
      else
        format.html { render :edit }
        format.json { render json: @tipo_cultivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_cultivos/1
  # DELETE /tipo_cultivos/1.json
  def destroy
    @tipo_cultivo.destroy
    respond_to do |format|
      format.html { redirect_to tipo_cultivos_url, notice: 'Tipo cultivo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_cultivo
      @tipo_cultivo = TipoCultivo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_cultivo_params
      params.require(:tipo_cultivo).permit(:nombre)
    end
end
