class InsertEc2Types < ActiveRecord::Migration
  def up
  	small = Ec2size.find_by_name("Small").id
  	med = Ec2size.find_by_name("Medium").id
  	large = Ec2size.find_by_name("Large").id
  	xlarge = Ec2size.find_by_name("Extra Large").id
  	cpu_med = Ec2size.find_by_name("Hi-CPU Medium").id
  	cpu_xl = Ec2size.find_by_name("Hi-CPU Extra Large").id

    ondemand = Ec2term.find_by_name("On-Demand").id
  	one = Ec2term.find_by_name("1-yr").id
  	three = Ec2term.find_by_name("3-yr").id

    none  = Ec2util.find_by_name("On-Demand").id
    light = Ec2util.find_by_name("Light").id
    medium = Ec2util.find_by_name("Medium").id
    heavy  = Ec2util.find_by_name("Heavy").id

    Ec2type.create!(:ec2size_id => small, :ec2term_id => ondemand, :ec2util_id => none, :hourly_cost => 0.08, :upfront_cost => 0.0)
    Ec2type.create!(:ec2size_id => med, :ec2term_id => ondemand, :ec2util_id => none, :hourly_cost => 0.16, :upfront_cost => 0.0)
    Ec2type.create!(:ec2size_id => large, :ec2term_id => ondemand, :ec2util_id => none, :hourly_cost => 0.32, :upfront_cost => 0.0)
    Ec2type.create!(:ec2size_id => xlarge, :ec2term_id => ondemand, :ec2util_id => none, :hourly_cost => 0.64, :upfront_cost => 0.0)
    Ec2type.create!(:ec2size_id => cpu_med, :ec2term_id => ondemand, :ec2util_id => none, :hourly_cost => 0.165, :upfront_cost => 0.0)
    Ec2type.create!(:ec2size_id => cpu_xl, :ec2term_id => ondemand, :ec2util_id => none, :hourly_cost => 0.66, :upfront_cost => 0.0)
    Ec2type.create!(:ec2size_id => small, :ec2term_id => one, :ec2util_id => light, :hourly_cost => 0.039, :upfront_cost => 69.0)
    Ec2type.create!(:ec2size_id => med, :ec2term_id => one, :ec2util_id => light, :hourly_cost => 0.078, :upfront_cost => 138.0)
    Ec2type.create!(:ec2size_id => large, :ec2term_id => one, :ec2util_id => light, :hourly_cost => 0.156, :upfront_cost => 276.0)
    Ec2type.create!(:ec2size_id => xlarge, :ec2term_id => one, :ec2util_id => light, :hourly_cost => 0.312, :upfront_cost => 552.0)
    Ec2type.create!(:ec2size_id => cpu_med, :ec2term_id => one, :ec2util_id => light, :hourly_cost => 0.1, :upfront_cost => 178.0)
    Ec2type.create!(:ec2size_id => cpu_xl, :ec2term_id => one, :ec2util_id => light, :hourly_cost => 0.4, :upfront_cost => 712.0)
    Ec2type.create!(:ec2size_id => small, :ec2term_id => one, :ec2util_id => medium, :hourly_cost => 0.024, :upfront_cost => 160.0)
    Ec2type.create!(:ec2size_id => med, :ec2term_id => one, :ec2util_id => medium, :hourly_cost => 0.048, :upfront_cost => 320.0)
    Ec2type.create!(:ec2size_id => large, :ec2term_id => one, :ec2util_id => medium, :hourly_cost => 0.096, :upfront_cost => 640.0)
    Ec2type.create!(:ec2size_id => xlarge, :ec2term_id => one, :ec2util_id => medium, :hourly_cost => 0.192, :upfront_cost => 1280.0)
    Ec2type.create!(:ec2size_id => cpu_med, :ec2term_id => one, :ec2util_id => medium, :hourly_cost => 0.06, :upfront_cost => 415.0)
    Ec2type.create!(:ec2size_id => cpu_xl, :ec2term_id => one, :ec2util_id => medium, :hourly_cost => 0.24, :upfront_cost => 1660.0)
    Ec2type.create!(:ec2size_id => small, :ec2term_id => one, :ec2util_id => heavy, :hourly_cost => 0.016, :upfront_cost => 195.0)
    Ec2type.create!(:ec2size_id => med, :ec2term_id => one, :ec2util_id => heavy, :hourly_cost => 0.032, :upfront_cost => 390.0)
    Ec2type.create!(:ec2size_id => large, :ec2term_id => one, :ec2util_id => heavy, :hourly_cost => 0.064, :upfront_cost => 780.0)
    Ec2type.create!(:ec2size_id => xlarge, :ec2term_id => one, :ec2util_id => heavy, :hourly_cost => 0.128, :upfront_cost => 1560.0)
    Ec2type.create!(:ec2size_id => cpu_med, :ec2term_id => one, :ec2util_id => heavy, :hourly_cost => 0.04, :upfront_cost => 500.0)
    Ec2type.create!(:ec2size_id => cpu_xl, :ec2term_id => one, :ec2util_id => heavy, :hourly_cost => 0.16, :upfront_cost => 2000.0)
    Ec2type.create!(:ec2size_id => small, :ec2term_id => three, :ec2util_id => light, :hourly_cost => 0.031, :upfront_cost => 106.3)
    Ec2type.create!(:ec2size_id => med, :ec2term_id => three, :ec2util_id => light, :hourly_cost => 0.063, :upfront_cost => 212.5)
    Ec2type.create!(:ec2size_id => large, :ec2term_id => three, :ec2util_id => light, :hourly_cost => 0.124, :upfront_cost => 425.2)
    Ec2type.create!(:ec2size_id => xlarge, :ec2term_id => three, :ec2util_id => light, :hourly_cost => 0.248, :upfront_cost => 850.4)
    Ec2type.create!(:ec2size_id => cpu_med, :ec2term_id => three, :ec2util_id => light, :hourly_cost => 0.088, :upfront_cost => 273.0)
    Ec2type.create!(:ec2size_id => cpu_xl, :ec2term_id => three, :ec2util_id => light, :hourly_cost => 0.352, :upfront_cost => 1092.0)
    Ec2type.create!(:ec2size_id => small, :ec2term_id => three, :ec2util_id => medium, :hourly_cost => 0.019, :upfront_cost => 250.0)
    Ec2type.create!(:ec2size_id => med, :ec2term_id => three, :ec2util_id => medium, :hourly_cost => 0.038, :upfront_cost => 500.0)
    Ec2type.create!(:ec2size_id => large, :ec2term_id => three, :ec2util_id => medium, :hourly_cost => 0.076, :upfront_cost => 1000.0)
    Ec2type.create!(:ec2size_id => xlarge, :ec2term_id => three, :ec2util_id => medium, :hourly_cost => 0.152, :upfront_cost => 2000.0)
    Ec2type.create!(:ec2size_id => cpu_med, :ec2term_id => three, :ec2util_id => medium, :hourly_cost => 0.053, :upfront_cost => 638.0)
    Ec2type.create!(:ec2size_id => cpu_xl, :ec2term_id => three, :ec2util_id => medium, :hourly_cost => 0.212, :upfront_cost => 2552.0)
    Ec2type.create!(:ec2size_id => small, :ec2term_id => three, :ec2util_id => heavy, :hourly_cost => 0.013, :upfront_cost => 300.0)
    Ec2type.create!(:ec2size_id => med, :ec2term_id => three, :ec2util_id => heavy, :hourly_cost => 0.026, :upfront_cost => 600.0)
    Ec2type.create!(:ec2size_id => large, :ec2term_id => three, :ec2util_id => heavy, :hourly_cost => 0.052, :upfront_cost => 1200.0)
    Ec2type.create!(:ec2size_id => xlarge, :ec2term_id => three, :ec2util_id => heavy, :hourly_cost => 0.104, :upfront_cost => 2400.0)
    Ec2type.create!(:ec2size_id => cpu_med, :ec2term_id => three, :ec2util_id => heavy, :hourly_cost => 0.035, :upfront_cost => 775.0)
    Ec2type.create!(:ec2size_id => cpu_xl, :ec2term_id => three, :ec2util_id => heavy, :hourly_cost => 0.14, :upfront_cost => 3100.0)
  end

  def down
  	Ec2type.all.each do |ec2type|
  	  ec2type.delete
  	end
  end
end
