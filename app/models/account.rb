class Account < ActiveRecord::Base
    belongs_to :usernames
    validates :name_id, :presence => true
    validates :user, :presence => true
    validates :password, :presence => true
end
