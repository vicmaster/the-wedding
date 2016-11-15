class User < ActiveRecord::Base
  has_one :invitation
end
