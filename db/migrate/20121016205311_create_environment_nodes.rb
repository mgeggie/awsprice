class CreateEnvironmentNodes < ActiveRecord::Migration
  def change
    create_table :environment_nodes do |t|
      t.references :environment
      t.references :node_type
      t.integer :quantity
      t.references :ec2type

      t.timestamps
    end
    add_index :environment_nodes, :environment_id
    add_index :environment_nodes, :node_type_id
    add_index :environment_nodes, :ec2type_id
  end
end
