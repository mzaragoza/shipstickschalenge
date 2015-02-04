class ProductsController < ApplicationController
   expose(:products){ Product.all }
   expose(:product, attributes: :product_params)

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

