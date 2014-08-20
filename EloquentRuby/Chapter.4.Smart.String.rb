#
#
#1. Single-quoted string: do almost no interpretation except: 
#   embedded a literal quota and a literal  back-slash.
#   eg: 'I don\'t like this one!'  'The \\ must be used in a string'
#2. Double-quoted string: do a bit more interpretation:
#   2.1 \t and \n can be used in double-quoted string.
#       eg: "I \t don't \t this one. \n A new line here"
#   2.2 embedded any expression in Double-quoted string.
#       eg: "I like #{ 0?100:200} nuts"
#3. Arbitrarily quoted string:
#   %qdelimeter ....... delimeter
#   %Qdelimeter ....... delimeter
#
#4. multi line string
#   4.1 1/2/3 can spread multi line.
#   4.2 use << to cope with very long multi line string. (Don't use)
#
#

class Document

# create sting
  def demo_for_single_quote
    a = 'I don\'t like this directory: \\mybook'
    puts a
  end

  def demo_for_double_quote
    a = "I don't like this \t directory:\\mybook  \n A new line here"
    puts a

    title = "Eloquent Ruby"
    author = "Olses"

    puts "The #{title} is written by #{author}"
  end

  def demo_for_arbitrarily
    a = %q{"Stop", she said, "I can't live without 's  and  "s."}
    b = %q<"Stop", she said, "I can't live without 's  and  "s.">
    c = %q["Stop", she said, "I can't live without 's  and  "s."]
    d = %q$"Stop", she said, "I can't live without 's  and  "s."$

    title = "Eloquent Ruby"
    author = "Olses"
    year   = 1863
    d = %Q<The #{title} is written by #{author} in year of #{year} >
  end

  def demo_for_multi_line
    a = 'Single quoted string
in multi line'
    
    b = "Double quoted string
in multi line"
  end

# API
  def demo_for_strips
    # strip any leading and ending white space.
    # lstrip rstrip
    a = "   hello   "
    a.lstrip
    a.rstrip
    a.lstrip.rstrip # same as a.strip
    a.strip #    
  end

  def demo_for_chomp
    # remove unwanted new line
    a = "The dark with unwanted new line\n"
    b = a.chomp
  end

  def demo_for_chop
    # remove last character 
    a = "Hello!"
    b = a.chop # b equals "Hello"
  end

  def demo_for_case
    a = "Hello Kitty!"
    a.upcase
    a.downcase
    a.swapcase
  end
  
  def demo_for_substitute
    "It is warm outside".sub( 'warm', 'cold')
    "yes yes".sub('yes', 'no')   # : no yes
    "yes yes".gsub('yes', 'no')  # : no no
    "yes yes".sub!('yes', 'no')   # : no yes
    "yes yes".gsub!('yes', 'no')  # : no no
  end

  def demo_for_split
    a = "This isn't true, right?"
    a.split   # : ["This", "isn't", "true,", "right?"]
    a.split(',') # : => ["This isn't true", " right?"]
  end

  def demo_for_index
    a = "It was dark and stormy night!"
    a.index('dark') # : 7
  end

  def demo_for_eaches
    title = "Olses \nNewline"
    title.each_char {|c| puts c}
    title.each_byte {|b| puts b}
    title.each_line {|l| puts l}
  end

end
 
  
  
