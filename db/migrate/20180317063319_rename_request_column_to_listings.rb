class RenameRequestColumnToListings < ActiveRecord::Migration[5.0]
  def change
  	rename_column :listings, :listig_title, :listing_title 
  end
end
