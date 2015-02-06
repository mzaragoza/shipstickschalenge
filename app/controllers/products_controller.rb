class ProductsController < ApplicationController
  expose(:products){
    if params[:search]
      products = Product.search(params[:search])
    else
      products = Product.all
    end
    products
  }
   expose(:product, attributes: :product_params)

   def index
     if params[:search]
       redirect_to product_path(products)
     end
   end
  def create
    if product.save
      flash[:notice] = t(:user_was_successfully_created)
      redirect_to root_path
    else
      render :new
    end
  end

   def update
    if product.save
      flash[:notice] = t(:user_was_successfully_updated)
      redirect_to root_path
    else
      render :edit
    end
  end

   def destroy
    if product.destroy
      flash[:notice] = t(:user_was_successfully_deleted)
      redirect_to root_path
    else
      render :edit
    end
  end

   private
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

