class User < ApplicationRecord
	has_many :commments
	has_many :pins
end
