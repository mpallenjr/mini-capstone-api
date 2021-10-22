class Product < ApplicationRecord

  # validates :description, length: { in: 6..500 }
  # validates :name, presence: true
  # validates :price, numericality: { greater_than: 0 }
  # validates :name, uniqueness: true

def supplier
  supplier = AddSupplier.find_by(id:supplier_id)
end

   def is_discounted?
     price < 10
   end
  
  def tax
    price * 0.09
  end

  def total
    price + tax
  end

end



#Create method called is_discounted? that returns true if item is under $10 and false otherwise
#Create method called tax which wil retirn the tax assumed 9% rate
#create method called total which will retirn the sim of the price plus tax
#36 min in video