require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    # Using regular expression for split. From my understanding, the split will look for the characters within the forward slashes. The characters within the brackets are the specific characters to look for. I cannot omit the brackets because the ? and ! will correspond to other shorthand symbols I think 
    (self.split(/[!.?]/) - ['', nil]).count
  end
end

binding.pry
0