class RProductsController < ApplicationController
  before_action :set_r_product, only: [:show, :edit, :update, :destroy]

  # GET /r_products
  # GET /r_products.json
  def index
    @r_products = RProduct.all
  end

  # GET /r_products/1
  # GET /r_products/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_r_product
      @r_product = RProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def r_product_params
      params.require(:r_product).permit(:name, :price)
    end
end
