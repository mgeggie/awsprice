class EnvironmentNode < ActiveRecord::Base
  belongs_to :environment
  belongs_to :node_type
  belongs_to :ec2type
  attr_accessible :quantity, :node_type_id, :ec2type_id, :environment_id

  def upfront_cost
  	self.ec2type.upfront_cost * self.quantity
  end

  def hourly_cost
  	self.ec2type.hourly_cost * self.quantity
  end
end
