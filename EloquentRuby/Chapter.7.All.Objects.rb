#
#
# every thing in  ruby are object
#

"abc".upcase
:abc.length
/abc/.class
true.class
false.nil?
nil.nil?
nil.class.class

# method of objects.
a = Object.new
a.to_s
a.eval
a.send(:to_s)

#
# private: can be called in its self
#          can be called by its sub class method.
#
# protected: any instance of a class can call a protected method on any other instance of the class.
#

class MyClass
  attr_accessor :content
  attr_reader :title
  attr_writer :author

  def words
    @content.split
  end

  private
  def word_count
    return words.size
  end

  # provate :word_count
end

#
# duck typing
#

