class ScProductsController < ApplicationController
  before_action :set_sc_product, only: [:show, :edit, :update, :destroy]

  # GET /sc_products
  # GET /sc_products.json
  def index
    @sc_products = ScProduct.all

    respond_to do |format|
      format.html
      format.json { render json: @sc_products }
      format.xml { render xml: @sc_products }
    end
  end

  # GET /sc_products/1
  # GET /sc_products/1.json
  def show
  end

  # GET /sc_products/new
  def new
    @sc_product = ScProduct.new
  end

  # GET /sc_products/1/edit
  def edit
  end

  # POST /sc_products
  # POST /sc_products.json
  def create
    @sc_product = ScProduct.new(sc_product_params)

    respond_to do |format|
      if @sc_product.save
        format.html { redirect_to @sc_product, notice: 'Sc product was successfully created.' }
        format.json { render :show, status: :created, location: @sc_product }
      else
        format.html { render :new }
        format.json { render json: @sc_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sc_products/1
  # PATCH/PUT /sc_products/1.json
  def update
    respond_to do |format|
      if @sc_product.update(sc_product_params)
        format.html { redirect_to @sc_product, notice: 'Sc product was successfully updated.' }
        format.json { render :show, status: :ok, location: @sc_product }
      else
        format.html { render :edit }
        format.json { render json: @sc_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sc_products/1
  # DELETE /sc_products/1.json
  def destroy
    @sc_product.destroy
    respond_to do |format|
      format.html { redirect_to sc_products_url, notice: 'Sc product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sc_product
      @sc_product = ScProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sc_product_params
      params.require(:sc_product).permit(:name, :price)
    end
end
