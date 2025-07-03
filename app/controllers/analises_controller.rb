class AnalisesController < ApplicationController
  # Adiciona a busca do Jogo antes das ações new e create
  before_action :set_jogo, only: %i[new create]
  before_action :set_analise, only: %i[show edit update destroy]

  # GET /jogos/1/analises or /jogos/1/analises.json
  def index
    # Se você quiser listar apenas as análises de um jogo específico
    @jogo = Jogo.find(params[:jogo_id])
    @analises = @jogo.analises
  end

  # GET /analises/1 or /analises/1.json
  def show
  end

  # GET /jogos/1/analises/new
  def new
    @analise = @jogo.analises.build
  end

  # GET /analises/1/edit
  def edit
  end

  # POST /jogos/1/analises or /jogos/1/analises.json
  def create
  @analise = @jogo.analises.build(analise_params)
  @analise.user = current_user # Adicione esta linha para associar ao usuário logado

  respond_to do |format|
    if @analise.save
      format.html { redirect_to @jogo, notice: "Análise adicionada com sucesso." }
      format.json { render :show, status: :created, location: @analise }
    else
      format.html { render :new, status: :unprocessable_entity }
      format.json { render json: @analise.errors, status: :unprocessable_entity }
    end
  end
end

  # PATCH/PUT /analises/1 or /analises/1.json
  def update
    if @analise.user == current_user
      respond_to do |format|
        if @analise.update(analise_params)
          # Ao atualizar, pode ser útil redirecionar para a análise ou para o jogo
          format.html { redirect_to @analise.jogo, notice: "Análise atualizada com sucesso." }
          format.json { render :show, status: :ok, location: @analise }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @analise.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to root_path, alert: "Você não tem permissão para editar esta análise."
    end
  end

  # DELETE /analises/1 or /analises/1.json
  def destroy
    jogo = @analise.jogo
    @analise.destroy!

    respond_to do |format|
      format.html { redirect_to jogo, notice: "Análise removida com sucesso." }
      format.json { head :no_content }
    end
  end

  private

    # Busca o Jogo a partir do jogo_id na URL
    def set_jogo
      @jogo = Jogo.find(params[:jogo_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_analise
      @analise = Analise.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    # O jogo_id não é mais necessário aqui pois já é pego da URL
    def analise_params
      params.require(:analise).permit(:nota, :analise)
    end
end