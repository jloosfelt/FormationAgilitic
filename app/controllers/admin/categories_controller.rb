class Admin::CategoriesController < Admin::BaseController
  def index
    @categories = Category.all
  end       
  
  def show
    @category = Category.find(params[:id])
  end  
  
  def new
    @category = Category.new
  end  
  
  def create
    @category = Category.new(params[:category])        
    if @category.save
      redirect_to admin_categories_path
    else 
      render :action => "new"
    end
  end       
  
  def edit
    @category = Category.find(params[:id])
  end    
  
  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(params[:category])
      flash[:notice] = "Mise à jour réussie !"
      redirect_to admin_categories_path
    else
      render :action => "edit"
    end
  end             
end
