class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :name
      t.text :position
      t.text :communication
      t.text :about_me

      t.timestamps null: false
    end
  end
end
