class CreateMilestones < ActiveRecord::Migration[7.0]
  def change
    create_table :milestones do |t|
      t.integer :kid_id
      t.string :milestone_title
      t.string :date
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
