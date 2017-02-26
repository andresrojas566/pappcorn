class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :country
      t.string :sport
      t.string :age

      t.timestamps
    end
  end
end
