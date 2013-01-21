class CreateCodeschoolCourses < ActiveRecord::Migration
  def change
    create_table :codeschool_courses do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.integer :position

      t.timestamps
    end
  end
end
