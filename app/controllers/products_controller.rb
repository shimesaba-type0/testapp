class ProductsController < ApplicationController
  def index
    @products = Product.order(:name)

    respond_to do |format|
      format.html
      # format.csv { render text: @products.to_csv }
      format.csv { send_data @products.to_csv }
      format.xls
    end
  end

end
