class Admin::ProductsController < Admin::BaseController
  def index
    @products = Product.all
  end       
  
  def show
    @product = Product.find(params[:id])
  end  
  
  def new
    @product = Product.new
  end  
  
  def create
    @product = Product.new(params[:product])        
    if @product.save
      redirect_to admin_products_path
    else 
      render :action => "new"
    end
  end       
  
  def edit
    @product = Product.find(params[:id])
  end    
  
  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      flash[:notice] = "Mise à jour réussie !"
      redirect_to admin_products_path
    else
      render :action => "edit"
    end
  end
end
