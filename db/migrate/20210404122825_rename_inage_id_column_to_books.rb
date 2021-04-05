class RenameInageIdColumnToBooks < ActiveRecord::Migration[5.2]
  def change
    rename_column :books, :inage_id, :image_id
  end
end
