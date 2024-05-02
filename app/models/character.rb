# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  def movie
    # look up the row in the chracters table corresponding to the receiving actor's id
    m_id = self.movie_id
    # match actor id to character records
    movie = Movie.where( id: m_id).at(0)
    # return an instance of Director
    return movie
  end
end
