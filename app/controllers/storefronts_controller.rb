class StorefrontsController < ApplicationController
  def all_items
  	@products = Product.all
  end
#all controllers other than Applicaiton controller must be plural!
  def items_by_category
  	@products = Product.where(category_id: params[:category_id])
  	@category = Category.find(params[:category_id])
  end

  def items_by_brand
  	  @products = Product.where(brand: params[:brand])
  	  @brand = params[:brand]
  end
end
