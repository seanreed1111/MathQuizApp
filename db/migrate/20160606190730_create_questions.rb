class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text
      t.string :ls
      t.string :ls_type

      t.timestamps null: false
    end
  end
end
