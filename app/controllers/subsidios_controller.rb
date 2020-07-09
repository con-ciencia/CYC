class SubsidiosController < ApplicationController
  before_action :set_subsidio, only: [:show, :edit, :update, :destroy]

  # GET /subsidios
  # GET /subsidios.json
  def index
    @subsidios = Subsidio.all
  end

  # GET /subsidios/1
  # GET /subsidios/1.json
  def show
    @fav_subsidio_exists = FavoriteSubsidio.where(subsidio: @subsidio, user: current_user) != []
  end

  # GET /subsidios/new
  def new
    @subsidio = Subsidio.new
  end

  # GET /subsidios/1/edit
  def edit
  end

  # POST /subsidios
  # POST /subsidios.json
  def create
    @subsidio = Subsidio.new(subsidio_params)

    respond_to do |format|
      if @subsidio.save
        format.html { redirect_to @subsidio, notice: 'Subsidio was successfully created.' }
        format.json { render :show, status: :created, location: @subsidio }
      else
        format.html { render :new }
        format.json { render json: @subsidio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subsidios/1
  # PATCH/PUT /subsidios/1.json
  def update
    respond_to do |format|
      if @subsidio.update(subsidio_params)
        format.html { redirect_to @subsidio, notice: 'Subsidio was successfully updated.' }
        format.json { render :show, status: :ok, location: @subsidio }
      else
        format.html { render :edit }
        format.json { render json: @subsidio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subsidios/1
  # DELETE /subsidios/1.json
  def destroy
    @subsidio.destroy
    respond_to do |format|
      format.html { redirect_to subsidios_url, notice: 'Subsidio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subsidio
      @subsidio = Subsidio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subsidio_params
      params.require(:subsidio).permit(:nombre, :institucion, :descripcion, :modalidad, :inicio, :cierre, :monto, :perfil, :bases)
    end
end
