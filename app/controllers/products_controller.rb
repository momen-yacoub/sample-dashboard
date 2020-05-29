class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :set_vendor

  # GET /products
  def index
    @products = @vendor.products.all
  end

  # GET /products/1
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to vendor_product_path(vendor_id: @vendor.id, id: @product.id), notice: 'Product was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /products/1
  def update
    if @product.update(product_params)
      redirect_to vendor_product_path(vendor_id: @product.vendor_id, id: @product.id),
                                      notice: 'Product was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /products/1
  def destroy
    @product.destroy
    redirect_to vendor_products_path(vendor_id: params[:vendor_id]), notice: 'Product was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    def set_vendor
      @vendor = Vendor.find(params[:vendor_id]) if params[:vendor_id].present?
    end

    # Only allow a trusted parameter "white list" through.
    def product_params
      if params[:product][:vendor_id].blank?
        params[:product][:vendor_id] = params[:vendor_id]
      end
      params.require(:product).permit(:name, :vendor_id, :price, :quantity)
    end
end
