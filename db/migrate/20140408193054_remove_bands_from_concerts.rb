class RemoveBandsFromConcerts < ActiveRecord::Migration
  def change
    remove_column :concerts, :bands, :string
  end
end
