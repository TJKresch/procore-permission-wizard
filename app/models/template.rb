class Template < ActiveRecord::Base
  attr_accessible :admin, :bidding, :change_orders, :commitments, :daily_log, :directory, :documents, :drawings, :emails, :home, :meetings, :name, :photos, :prime_contract, :punch_list, :reports, :rfis, :schedule, :submittals, :transmittals, :account_id
  belongs_to :account
  validates_presence_of :name

  def copy_to(account_id)
    copy = self.dup
    copy.account_id = account_id
    copy.save
  end

end
