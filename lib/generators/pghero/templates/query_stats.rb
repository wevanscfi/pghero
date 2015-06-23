class <%= migration_class_name %> < ActiveRecord::Migration
  def change
    create_table :pghero_query_stats do |t|
      t.text :database
      t.text :query
      t.float :total_time
      t.integer :calls, limit: 8
      t.timestamp :captured_at
    end

    add_index :pghero_query_stats, [:database, :captured_at]
  end
end