class CreateSupervisors < ActiveRecord::Migration[6.1]
  def change
    create_table :supervisors do |t|
      t.string :name
      t.string :email
      t.string :cellphone

      t.timestamps
    end
  end
end
