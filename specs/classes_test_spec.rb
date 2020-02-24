require('minitest/autorun')
require('minitest/reporters')
require_relative('../classes_test')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestMovies < MiniTest::Test

  def test_get_film_name()
    movies = Movies.new("In Bruges", "Martin McDonagh", "Colin Farell", "Brendan Gleeson", 123)
    assert_equal("In Bruges", movies.film_name)
  end

  def test_get_lead_actor()
    movies = Movies.new("Seven Psychopaths", "Martin McDonagh", "Colin Farell", "Sam Rockwell", 117)
    assert_equal("Colin Farell", movies.lead_actor)
  end

  def test_set_supporting_actor()
    movies = Movies.new("Seven Psychopaths", "Martin McDonagh", "Colin Farell", "Sam Rockwell", 117)
    movies.supporting_actor = "Woody Harelson"
    assert_equal("Woody Harelson", movies.supporting_actor)
  end

  def test_set_new_film()
    movies = Movies.new("In Bruges", "Martin McDonagh", "Colin Farell", "Brendan Gleeson", 123)
    movies.film_name = "Three Billboards"
    movies.director = "Martin McDonagh"
    movies.lead_actor = "Frances McDormand"
    movies.supporting_actor = "Sam Rockwell"
    movies.run_time = 130
    assert_equal("Three Billboards", movies.film_name)
    assert_equal("Martin McDonagh", movies.director)
    assert_equal("Frances McDormand", movies.lead_actor)
    assert_equal("Sam Rockwell", movies.supporting_actor)
    assert_equal(130, movies.run_time)
  end

  def test_directors_cut_runtime()
    movies = Movies.new("In Bruges", "Martin McDonagh", "Colin Farell", "Brendan Gleeson", 123)
    movies.directors_cut_runtime(10)
    assert_equal(133, movies.run_time)
  end

end
