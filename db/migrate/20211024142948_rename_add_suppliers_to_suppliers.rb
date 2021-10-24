class RenameAddSuppliersToSuppliers < ActiveRecord::Migration[6.1]
  def change
    rename_table :add_suppliers, :suppliers
  end 
end
