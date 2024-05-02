# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  def filmography
    # look up the row in the directors table corresponding to the receiving movie’s director_id
    m_id = self.director_id
    # match director id to movie records
    movie = Movie.where( director_id: m_id).at(0)
    # return an instance of Director
    return movie
  end 
end
