class AddImageFile4ToImage < ActiveRecord::Migration
  def change
    add_column :images, :image_file4, :string
  end
end
