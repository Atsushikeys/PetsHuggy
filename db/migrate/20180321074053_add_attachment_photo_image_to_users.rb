class AddAttachmentPhotoImageToUsers < ActiveRecord::Migration[5.0]
  def self.up
    change_table :users do |t|
      t.attachment :photo
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :users, :photo
    remove_attachment :users, :image
  end
end
