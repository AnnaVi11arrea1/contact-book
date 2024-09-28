# == Schema Information
#
# Table name: contacts
#
#  id               :integer          not null, primary key
#  city             :text
#  date_of_birth    :date
#  first_name       :text
#  last_name        :text
#  notes            :text
#  phone            :text
#  state            :text
#  street_address_1 :text
#  street_address_2 :text
#  zip              :text
#  created_at       :timestamptz
#
class Contact < ActiveRecord::Base
end
