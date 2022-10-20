require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentence = 0

    # punctuation to check for
    punctuation = [".", "?", "!"]

    # iterate over every character in string
    self.chars.each.with_index do |char, index|

      # check if the character is a punctuation, and if the _next_ character is _not_ a punctuation
      if punctuation.include?(char) && !punctuation.include?(self[index + 1])
        sentence += 1
      end
    end
    sentence
  end
end

# def sentence?
#   if self.end_with?(".") == true
#     puts true
#   else
#     puts false
#   end
# end