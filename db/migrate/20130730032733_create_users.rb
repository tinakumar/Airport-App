class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.integer :ff_miles
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
