class CreateAirports < ActiveRecord::Migration
  def change
    create_table :airports do |t|
      t.string :city
      t.string :code
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
