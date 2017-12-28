class CreateAdminProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_products do |t|
      t.string :name

      t.timestamps
    end
  end
end
