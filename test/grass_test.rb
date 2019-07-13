require 'test/unit'
require 'grass'

class TestGrassCode < Test::Unit::TestCase
  data(
    "simplest code" => ["w", "[Abs(1, [])]"],
    "simplest code2"=> ["wv", "[Abs(1, [])]"],
    "long function" => ["wwwWWWwwWWWWwwWw", "[Abs(3, [App(3, 2), App(4, 2), App(1, 1)])]"],
    "multi function"=> ["wWwvwWw", "[Abs(1, [App(1, 1)]), Abs(1, [App(1, 1)])]"],
    "funcs & apps"  => ["wwWwwvWwwwvWWwwwWWWwvwWw",
                        "[Abs(2, [App(1, 2)]), App(1, 3), App(2, 3), App(3, 1), Abs(1, [App(1, 1)])]"]
  )
  def test_new_simple(data)
    code_string, structual_string = data
    code = GrassCode.new(code_string)
    assert_equal(code_string, code.to_s)
    assert_equal(structual_stringm, code.parse_tree.to_s)
  end
end