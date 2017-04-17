class Username < ActiveRecord::Base
    has_many :accounts
    validates :name, :presence => true
    validates :email, :presence => true
end