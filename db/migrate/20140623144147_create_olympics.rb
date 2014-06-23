class CreateOlympics < ActiveRecord::Migration
  def change
    create_table :olympics do |t|
      t.string :sport
      t.string :country
    end
  end
end
