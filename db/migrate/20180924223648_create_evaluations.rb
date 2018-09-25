class CreateEvaluations < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluations do |t|
      t.integer :idevent
      t.string :comment
      t.integer :grade
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
