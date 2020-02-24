
class Movies

attr_accessor :film_name, :director, :lead_actor, :supporting_actor, :run_time, :cast_members

  def initialize(film_name, director, lead_actor, supporting_actor, run_time, cast_members)
    @film_name = film_name
    @director = director
    @lead_actor = lead_actor
    @supporting_actor = supporting_actor
    @run_time = run_time
    @cast_members = cast_members
  end

  def directors_cut_runtime(extra_time)
    @run_time += extra_time
  end

  def add_cast_member(member_to_add)
    @cast_members.push(member_to_add)
  end

end
