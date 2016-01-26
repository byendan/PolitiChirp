class CreatePolititians < ActiveRecord::Migration
  def change
    create_table :polititians do |t|

      t.string :twitter_handle

      t.timestamps null: false
    end
  end
end
