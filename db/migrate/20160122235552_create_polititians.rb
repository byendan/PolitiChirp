class CreatePolititians < ActiveRecord::Migration
  def change
    create_table :polititians do |t|

      t.timestamps null: false
    end
  end
end
