class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :vaccine_name
      t.integer :dose
      t.string  :date_vaccine
      t.string  :lot_number
      t.timestamps
      t.belongs_to :users, foreign_key: true
    end 
  end
end
