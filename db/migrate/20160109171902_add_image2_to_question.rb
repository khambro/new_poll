class AddImage2ToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :image_file2, :string
  end
end
