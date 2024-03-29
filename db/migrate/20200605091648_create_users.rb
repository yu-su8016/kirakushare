class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name,      null: false, default: ""
      t.string :email,         null: false
      t.string :encrypted_password, null: false, default: ""
      t.timestamps
    end
  end
end
