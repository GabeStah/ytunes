class ChangeSongWinnerToString < ActiveRecord::Migration
  def change
    change_column :songs, :winner,  :string
  end
end
