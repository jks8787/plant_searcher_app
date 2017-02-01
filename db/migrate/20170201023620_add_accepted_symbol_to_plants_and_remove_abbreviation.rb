class AddAcceptedSymbolToPlantsAndRemoveAbbreviation < ActiveRecord::Migration[5.0]
  def change
    add_column :plants, :symbol, :string
    remove_column :plants, :abbreviation, :string
  end
end
