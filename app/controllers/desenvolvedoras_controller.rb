class DesenvolvedorasController < ApplicationController
  before_action :set_desenvolvedora, only: %i[ show edit update destroy ]

  # GET /desenvolvedoras or /desenvolvedoras.json
  def index
    @desenvolvedoras = Desenvolvedora.all
  end

  # GET /desenvolvedoras/1 or /desenvolvedoras/1.json
  def show
  end

  # GET /desenvolvedoras/new
  def new
    @desenvolvedora = Desenvolvedora.new
  end

  # GET /desenvolvedoras/1/edit
  def edit
  end

  # POST /desenvolvedoras or /desenvolvedoras.json
  def create
    @desenvolvedora = Desenvolvedora.new(desenvolvedora_params)

    respond_to do |format|
      if @desenvolvedora.save
        format.html { redirect_to @desenvolvedora, notice: "Desenvolvedora was successfully created." }
        format.json { render :show, status: :created, location: @desenvolvedora }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @desenvolvedora.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /desenvolvedoras/1 or /desenvolvedoras/1.json
  def update
    respond_to do |format|
      if @desenvolvedora.update(desenvolvedora_params)
        format.html { redirect_to @desenvolvedora, notice: "Desenvolvedora was successfully updated." }
        format.json { render :show, status: :ok, location: @desenvolvedora }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @desenvolvedora.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /desenvolvedoras/1 or /desenvolvedoras/1.json
  def destroy
    @desenvolvedora.destroy!

    respond_to do |format|
      format.html { redirect_to desenvolvedoras_path, status: :see_other, notice: "Desenvolvedora was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_desenvolvedora
      @desenvolvedora = Desenvolvedora.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def desenvolvedora_params
      params.expect(desenvolvedora: [ :nome ])
    end
end
