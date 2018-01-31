class Translator
  attr_reader :dictionary,
              :message

  def initialize
    @dictionary = {"a" => ".-",
                    "b" => "-...",
                    "c" => "-.-.",
                    "d" => "-..",
                    "e" => ".",
                    "f" => "..-.",
                    "g" => "--.",
                    "h" => "....",
                    "i" => "..",
                    "j" => ".---",
                    "k" => "-.-",
                    "l" => ".-..",
                    "m" => "--",
                    "n" => "-.",
                    "o" => "---",
                    "p" => ".--.",
                    "q" => "--.-",
                    "r" => ".-.",
                    "s" => "...",
                    "t" => "-",
                    "u" => "..-",
                    "v" => "...-",
                    "w" => ".--",
                    "x" => "-..-",
                    "y" => "-.--",
                    "z" => "--..",
                    "1" => ".----",
                    "2" => "..---",
                    "3" => "...--",
                    "4" => "....-",
                    "5" => ".....",
                    "6" => "-....",
                    "7" => "--...",
                    "8" => "---..",
                    "9" => "----.",
                    "0" => "-----",
                    " " => " "}
  end

  def record(message)
    @message = message.downcase
  end

  def translate
    array = @message.split(//)
    translation = array.map do |letter|
      @dictionary[letter]
    end
    translation.join()
  end

  def from_file(filename)
    newfile = File.open.readlines.each do |line|
      puts line
    end
    binding.pry
  #   filemessage = newfile.downcase.split(//)
  #   filetranslation = filemessage.map do |letter|
  #     @dictionary[letter]
  #   end
  #   filetranslation.join()
  end

end
