class Account < ActiveRecord::Base
    belongs_to :username
    validates :username_id, :presence => true
    validates :application, :presence => true
    validates :user, :presence => true
    validates :password, :presence => true
end
