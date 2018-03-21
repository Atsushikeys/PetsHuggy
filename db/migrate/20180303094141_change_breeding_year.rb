class ChangeBreedingYear < ActiveRecord::Migration[5.0]
  def change
  	rename_column :listings,:breeding_year,:breeding_years
  end
end
