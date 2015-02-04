class Api::V1::ProductsController < ApiController
  protect_from_forgery except: :all
   expose(:products){ Product.all }
   expose(:product, attributes: :product_params)

  def index
    render json: products
  end

  def show
    render json: product
  end

  def create
    begin
      product.save
      render json: product
    rescue
      render json: :bad_request
    end
  end

  def update
    begin
      product.save
      render json: product
    rescue
      render json: :bad_request
    end
  end

  def destroy
    begin
      message = product.name + ' was deleted'
      product.destroy
      render json: message
    rescue
      render json: :bad_request
    end
  end

  def product_params
     params.require(:product).permit(
       :name,
       :type,
       :length,
       :width,
       :height,
       :weight,
     )
  end
end

