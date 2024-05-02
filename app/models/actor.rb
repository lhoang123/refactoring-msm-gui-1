# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord
  def characters
    # look up the row in the chracters table corresponding to the receiving actor's id
    a_id = self.id
    # match actor id to character records
    character = Character.where( actor_id: a_id).at(0)
    # return an instance of Director
    return character
  end
end
