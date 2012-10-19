class Environment < ActiveRecord::Base
  has_many :environment_nodes
  attr_accessible :name, :usage_rate, :outbound_bandwidth

  def to_s
  	name
  end

  def hourly_cost
  	hourly_cost = 0.0
  	self.environment_nodes.each do |environment_node|
  	  hourly_cost += environment_node.hourly_cost
  	end
  	hourly_cost
  end

  def upfront_cost
  	upfront_cost = 0.0
  	self.environment_nodes.each do |environment_node|
  	  upfront_cost += environment_node.upfront_cost
    end
    upfront_cost
  end

  def monthly_outbound_bandwidth_cost
    outbound_bandwidth_cost = 0.0
    if outbound_bandwidth >= 1.0
      outbound_bandwidth_cost += outbound_bandwidth * 0.120
      if outbound_bandwidth >= 40000.0 #40 TB
        outbound_bandwidth_cost += (outbound_bandwidth - 10000.0) * 0.09
        if outbound_bandwidth >= 100000.0 #100 TB
          outbound_bandwidth_cost += (outbound_bandwidth - 40000.0) * 0.07
          if outbound_bandwidth >= 350000.0 #350 TB
            outbound_bandwidth_cost += (outbound_bandwidth - 100000.0) * 0.05
          end
        end
      end
    end
    outbound_bandwidth_cost
  end

  def monthly_ec2_hosting_cost
    self.hourly_cost * self.usage_rate * (365.25/12.0) * 24
  end

  def monthly_cost
    monthly_ec2_hosting_cost + monthly_outbound_bandwidth_cost
  end
end
