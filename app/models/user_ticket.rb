class UserTicket < ApplicationRecord
	before_action :authenticate_user!
  belongs_to :user
  belongs_to :ticket
end
