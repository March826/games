class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :image
      t.string :q
      t.string :a1
      t.integer :a1s
      t.string :a2
      t.integer :a2s
      t.string :a3
      t.integer :a3s
      t.string :a4
      t.integer :a4s
      t.reference :play

      t.timestamps
    end
  end
end
