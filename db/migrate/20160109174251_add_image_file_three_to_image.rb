class AddImageFileThreeToImage < ActiveRecord::Migration
  def change
    add_column :images, :image_file_three, :string
  end
end
