class RemoveListToMovies < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :list_id
  end
end
