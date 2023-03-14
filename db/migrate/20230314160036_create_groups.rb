class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :title
      t.string :student_id

      t.timestamps
    end
  end
end
