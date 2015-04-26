class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.string :command
      t.string :filter
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps null: false
    end
  end
end
