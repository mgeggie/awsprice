class CreateEc2sizes < ActiveRecord::Migration
  def change
    create_table :ec2sizes do |t|
      t.string :name

      t.timestamps
    end
    Ec2size.create!(:name => "Small")
    Ec2size.create!(:name => "Medium")
    Ec2size.create!(:name => "Large")
    Ec2size.create!(:name => "Extra Large")
    Ec2size.create!(:name => "Hi-CPU Medium")
    Ec2size.create!(:name => "Hi-CPU Extra Large")
  end
end
