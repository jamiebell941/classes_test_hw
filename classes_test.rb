
class Movies

attr_accessor :film_name, :director, :lead_actor, :supporting_actor, :run_time

  def initialize(film_name, director, lead_actor, supporting_actor, run_time)
    @film_name = film_name
    @director = director
    @lead_actor = lead_actor
    @supporting_actor = supporting_actor
    @run_time = run_time
  end

def directors_cut_runtime(extra_time)
  @run_time += extra_time
end


end
