class CreateKids < ActiveRecord::Migration[7.0]
  def change
    create_table :kids do |t|
      t.integer :user_id
      t.string :name
      t.string :birthday
      t.string :image_url

      t.timestamps
    end
  end
end
