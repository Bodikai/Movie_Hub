class AddWatchedAttributeToMovie < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :watched, :boolean
  end
end
