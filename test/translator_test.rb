require "minitest"
require "minitest/pride"
require "minitest/autorun"
require "./lib/translator"
require "pry"

class Test_Translator < Minitest::Test

  def test_translator_exists
    translator = Translator.new
    assert_instance_of Translator, translator
  end

  def test_translator_record_message
    translator = Translator.new
    translator.record("Timmy in the well")
    assert_equal "timmy in the well", translator.message
  end

  def test_translator_translates
    translator = Translator.new
    translator.record("Timmy in the well")
    translator.translate
    assert_equal "-..-----.-- ..-. -..... .--..-...-..", translator.translate
  end

  def test_translator_can_use_numbers
    translator = Translator.new
    translator.record("3 blind mice 4 lunch")
    translator.translate
    assert_equal "...-- -....-....-.-.. --..-.-.. ....- .-....--.-.-.....", translator.translate
  end

  def test_translator_can_read_from_file
    translator = Translator.new
    translator.from_file("input.txt")
    assert_equal ".. .--- ..-. .- ..-....-...", translator.from_file("input.txt")
  end

end
