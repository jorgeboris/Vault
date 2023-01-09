class CreateEnterprises < ActiveRecord::Migration[6.1]
  def change
    create_table :enterprises do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :cellphone

      t.timestamps
    end
  end
end
