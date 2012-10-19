class CreateEc2types < ActiveRecord::Migration
  def change
    create_table :ec2types do |t|
      t.references :ec2size
      t.references :ec2term
      t.references :ec2util
      t.float :upfront_cost
      t.float :hourly_cost
      t.timestamps
    end
    add_index :ec2types, :ec2size_id
    add_index :ec2types, :ec2term_id
    add_index :ec2types, :ec2util_id
  end
end
