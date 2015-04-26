class CreateHostResults < ActiveRecord::Migration
  def change
    create_table :host_results do |t|
      t.string :output
      t.integer :exit_status
      t.datetime :start_at
      t.datetime :end_at
      t.references :run, index: true, foreign_key: true
      t.references :host, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
