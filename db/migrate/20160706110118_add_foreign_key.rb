class AddForeignKey < ActiveRecord::Migration
  def change
  	add_foreign_key :resumes, :users, column:  :user_id, primary_key: :id
  	add_foreign_key :lessons, :users, column:  :user_id, primary_key: :id
  end
end
