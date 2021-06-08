class YfcasesController < ApplicationController
  before_action :set_yfcase, only: %i[ show edit update destroy ]

  # GET /yfcases or /yfcases.json
  def index
    @yfcases = Yfcase.all
  end

  # GET /yfcases/1 or /yfcases/1.json
  def show
  end

  # GET /yfcases/new
  def new
    @yfcase = Yfcase.new
  end

  # GET /yfcases/1/edit
  def edit
  end

  # POST /yfcases or /yfcases.json
  def create
    @yfcase = Yfcase.new(yfcase_params)

    respond_to do |format|
      if @yfcase.save
        format.html { redirect_to @yfcase, notice: "Yfcase was successfully created." }
        format.json { render :show, status: :created, location: @yfcase }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @yfcase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yfcases/1 or /yfcases/1.json
  def update
    respond_to do |format|
      if @yfcase.update(yfcase_params)
        format.html { redirect_to @yfcase, notice: "Yfcase was successfully updated." }
        format.json { render :show, status: :ok, location: @yfcase }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @yfcase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yfcases/1 or /yfcases/1.json
  def destroy
    @yfcase.destroy
    respond_to do |format|
      format.html { redirect_to yfcases_url, notice: "Yfcase was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yfcase
      @yfcase = Yfcase.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def yfcase_params
      params.require(:yfcase).permit(:yfcaseCaseNumber)
    end
end
