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

  def import
    # Productモデル内のimportメソッドに渡してトップページにリダイレクト
    Product.import(params[:file])
    redirect_to root_url, notice: "Products imported."
  end
end
