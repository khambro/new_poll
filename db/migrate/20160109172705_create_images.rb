class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :question_id
      t.string :image_file

      t.timestamps null: false
    end
  end
end
