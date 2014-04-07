class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :bands
      t.string :venue
      t.string :location
      t.date :date

      t.timestamps
    end
  end
end
