class Ec2type < ActiveRecord::Base
  belongs_to :ec2size
  belongs_to :ec2term
  belongs_to :ec2util
  # attr_accessible :title, :body
  attr_accessible :ec2size_id, :ec2term_id, :ec2util_id, :hourly_cost, :upfront_cost

  def to_s
  	"#{ec2size.name} - #{ec2term.name}: #{ec2util.name}"
  end
end
