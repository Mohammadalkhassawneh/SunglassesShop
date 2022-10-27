class LensesController < ApplicationController
  before_action :set_lense, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:show, :index]
  # GET /lenses or /lenses.json
  def index
      @lenses = Lense.paginate(page: params[:page], per_page: 3)
      @order_item = current_order.order_items.new
  end

  # GET /lenses/1 or /lenses/1.json
  def show
  end

  # GET /lenses/new
  def new
    @lense = Lense.new
  end

  # GET /lenses/1/edit
  def edit
  end

  # POST /lenses or /lenses.json
  def create
    @lense = Lense.new(lense_params)
    @lense.user_id = current_user.id
    respond_to do |format|
      if @lense.save
        format.html { redirect_to lense_url(@lense), notice: "Lense was successfully created.",class: 'text-danger' }
        format.json { render :show, status: :created, location: @lense }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lenses/1 or /lenses/1.json
  def update
    respond_to do |format|
      if @lense.update(lense_params)
        format.html { redirect_to lense_url(@lense), notice: "Lense was successfully updated." }
        format.json { render :show, status: :ok, location: @lense }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lenses/1 or /lenses/1.json
  def destroy
    @lense.destroy

    respond_to do |format|
      format.html { redirect_to lenses_url, notice: "Lense was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def admin_lenses 
    @lenses = Lense.all
    render 'admin/lenses'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lense
      @lense = Lense.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lense_params
      params.require(:lense).permit(:colour, :description, :prescription_type, :lens_type, :stock, :price, :currency)
    end

end
