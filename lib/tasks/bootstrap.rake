namespace :app do 
  desc "Chargement de données bidons"
  task :bootstrap => [:environment, "db:migrate:reset"] do
    
    category = Category.create do |c|
      c.name = "Cat 1"
    end                    
    
    Product.create do |p|
      p.name = "Product 1"
      p.price = 10.2
      p.category = category
    end
  end
end   