class ProductsController < ApplicationController
    def index
			@pagy, @products = pagy(Product.order(created_at: :desc), items: 36)
			respond_to do |format|
				format.html #GET
				format.turbo_stream #POST
			end
		end

		def new
			@product = Product.new
		end
		
		def show
			@product = Product.find_by id: params[:id]
			@subcategory = @product.subcategory
			@category = @subcategory.category
		end

		def create
			@product = current_user.products.build product_params
			if @product.save
				flash[:success] = "Object successfully created"
				redirect_to root_path
			else
				flash[:error] = "Something went wrong"
				render :new
			end
		end

		def edit
			@product = Product.find_by id: params[:id]
		end
		
		def update
			@product = Product.find_by id: params[:id]
			if @product.update product_params
				redirect_to root_path
			else
				render :edit
			end
		end
	
		def delete
		end

		private

		def product_params
			params.require(:product).permit(:title, :body, :price, :category_id, :subcat_id)
		end
		
end