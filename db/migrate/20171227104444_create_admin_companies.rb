class CreateAdminCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_companies do |t|
      t.string :name
      t.string :active

      t.timestamps
    end
  end
end
