# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  def director
    # look up the row in the directors table corresponding to the receiving movie’s director_id
    d_id = self.director_id
    # matche director id to name
    director = Director.where( id: d_id).at(0)
    # return an instance of Director
    return director
  end 
end
