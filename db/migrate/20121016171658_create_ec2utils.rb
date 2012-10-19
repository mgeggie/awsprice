class CreateEc2utils < ActiveRecord::Migration
  def change
    create_table :ec2utils do |t|
      t.string :name

      t.timestamps
    end
    Ec2util.create(:name => "On-Demand")
    Ec2util.create(:name => "Light")
    Ec2util.create(:name => "Medium")
    Ec2util.create(:name => "Heavy")
  end
end
