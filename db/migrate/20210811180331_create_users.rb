class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :lcd
      t.string  :name
      t.string  :last_name
      t.string  :birth_of_date
      t.timestamps

    end 
  end
end
