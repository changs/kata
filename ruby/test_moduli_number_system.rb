require 'minitest/autorun'
require_relative 'moduli_number_system'

class TestModuliNumberSystem < MiniTest::Test
  def test_valid
    def testing(n, modsys, expect)
      actual = fromNb2Str(n, modsys)
    rescue NameError
      actual = from_nb_2_str(n, modsys)
    ensure
      print('Actual ', actual, "\n")
      print('Expect ', expect, "\n")
      assert_equal(actual, expect)
      print('#', "\n")
    end

    testing(779, [8,7,5,3], '-3--2--4--2-')
    testing(15, [8,6,5,3], 'Not applicable')
    testing(3450, [17,5,3], 'Not applicable')
    testing(3450, [13,11,7,5,3,2], '-5--7--6--0--0--0-')
  end
end
