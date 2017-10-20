class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :nickname, null: false
      t.string :email
      t.string :phone
      t.integer :gender, limit: 1
      t.date :birth_date
      t.string :identity_provider, default: 'own'
      t.string :service_name
      t.boolean :is_authorized, default: false

      t.timestamps
    end

    add_index :users, :nickname, unique: true
    add_index :users, :name, unique: true
    add_index :users, :email, unique: true
    add_index :users, :phone, unique: true
  end
end
