class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.string :username
      t.string :score
      t.array :questions
      t.reference :question

      t.timestamps
    end
  end
end
