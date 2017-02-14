class AddAttachmentImageToImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :user_id
      t.attachment :image
    end
  end
end
