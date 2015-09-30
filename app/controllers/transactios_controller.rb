class TransactiosController < ApplicationController
  before_action :set_transactio, only: [:show, :edit, :update, :destroy]

  # GET /transactios
  def index
    @transactios = Transactio.all
  end

  # GET /transactios/1
  def show
  end

  # GET /transactios/new
  def new
    @transactio = Transactio.new
  end

  # GET /transactios/1/edit
  def edit
  end

  # POST /transactios
  def create
    @transactio = Transactio.new(transactio_params)

    if @transactio.save
      redirect_to @transactio, notice: 'Transactio was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /transactios/1
  def update
    if @transactio.update(transactio_params)
      redirect_to @transactio, notice: 'Transactio was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /transactios/1
  def destroy
    @transactio.destroy
    redirect_to transactios_url, notice: 'Transactio was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transactio
      @transactio = Transactio.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def transactio_params
      params.require(:transactio).permit(:name, :amount)
    end
end
