
class Movies

attr_accessor :film_name, :director, :lead_actor, :supporting_actor, :run_time, :cast_members, :rating

  def initialize(film_name, director, lead_actor, supporting_actor, run_time, cast_members, rating)
    @film_name = film_name
    @director = director
    @lead_actor = lead_actor
    @supporting_actor = supporting_actor
    @run_time = run_time
    @cast_members = cast_members
    @rating = rating
  end

  def directors_cut_runtime(extra_time)
    @run_time += extra_time
  end

  def add_cast_member(member_to_add)
    @cast_members.push(member_to_add)
  end

  def increase_rating(rating_increase_num)
    @rating += rating_increase_num
  end

  # def find_cast_member?(member)
  #   return @cast_members.include?(member)
  # end

end
