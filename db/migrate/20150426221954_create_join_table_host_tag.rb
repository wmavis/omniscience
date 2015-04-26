class CreateJoinTableHostTag < ActiveRecord::Migration
  def change
    create_join_table :hosts, :tags do |t|
      # t.index [:host_id, :tag_id]
      # t.index [:tag_id, :host_id]
    end
  end
end
