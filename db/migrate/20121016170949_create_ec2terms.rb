class CreateEc2terms < ActiveRecord::Migration
  def change
    create_table :ec2terms do |t|
      t.string :name

      t.timestamps
    end
    Ec2term.create!(:name => "On-Demand")
    Ec2term.create!(:name => "1-yr")
    Ec2term.create!(:name => "3-yr")
  end
end
