class AddOutboundBandwidthToEnvironment < ActiveRecord::Migration
  def change
    change_table :environments do |t|
      t.float :outbound_bandwidth, :default => 0.0
    end
  end
end
