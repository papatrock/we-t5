class MarcadorsController < ApplicationController
  before_action :set_marcador, only: %i[ show edit update destroy ]

  # GET /marcadors or /marcadors.json
  def index
    @marcadors = Marcador.all
  end

  # GET /marcadors/1 or /marcadors/1.json
  def show
  end

  # GET /marcadors/new
  def new
    @marcador = Marcador.new
  end

  # GET /marcadors/1/edit
  def edit
  end

  # POST /marcadors or /marcadors.json
  def create
    @marcador = Marcador.new(marcador_params)

    respond_to do |format|
      if @marcador.save
        format.html { redirect_to @marcador, notice: "Marcador was successfully created." }
        format.json { render :show, status: :created, location: @marcador }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @marcador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marcadors/1 or /marcadors/1.json
  def update
    respond_to do |format|
      if @marcador.update(marcador_params)
        format.html { redirect_to @marcador, notice: "Marcador was successfully updated." }
        format.json { render :show, status: :ok, location: @marcador }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @marcador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marcadors/1 or /marcadors/1.json
  def destroy
    @marcador.destroy!

    respond_to do |format|
      format.html { redirect_to marcadors_path, status: :see_other, notice: "Marcador was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marcador
      @marcador = Marcador.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def marcador_params
      params.expect(marcador: [ :nome, :descricao ])
    end
end
