# == Schema Information
#
# Table name: users
#
#  id		   :integer				not null, primary key
#  name		   :string(255)			
#  phone	   :integer		
#  email	   :string(255)
#  created_at  :datetime			not null
#  updated_at  :datetime			not null
#

class User < ActiveRecord::Base
	validates :name, length: {minimum: 2}
	validates :phone, length: {minimum: 10}
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
