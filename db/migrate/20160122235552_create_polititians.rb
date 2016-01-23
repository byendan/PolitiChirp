class CreatePolititians < ActiveRecord::Migration
  def change
    create_table :polititians do |t|
      t.string :name
      t.string :avatar
      t.string :feature_image
      t.string :twitter_handle
      t.string :link

      t.timestamps null: false
    end
  end
end
