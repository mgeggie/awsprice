class AddEnvironmentUsageRate < ActiveRecord::Migration
  def change
  	change_table :environments do |t|
  	  t.float :usage_rate, :default => 1.00
  	end
  end
end
