class CreatePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.integer :user_id
      t.integer :kid_id
      t.string :date
      t.string :description
      t.string :image_url

      t.timestamps
    end
  end
end
