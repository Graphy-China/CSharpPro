#------------------------------------------------------------
# Array and Hash
# Method:
# map - useful in translation.
# inject - pass two arguments to block: current result and element.
#          return last result.
#
# in_place method: method!
#


class Document

#---------------------------------
# creation 
  def demo_for_string_array_creation
    # poem_words = ['twinkle', 'little', 'star', 'how', 'I', 'wonder']
    # ->
    poem_words = %w{ twinkle little star how I wonder }
  end

  def demo_for_hash_creation
    # book_info = {:first_name => 'Yu', :last_name => 'Seangel'}
    # ->
    book_info = {first_name:'Yu', last_name:'Seangel'}
  end

  # variable arguments.
  def demo_for_array_in_arg( *args )
    args.each {|arg| puts arg}
  end
    
  # hash used in arguments
  def demo_for_hash_in_arg(first_name, last_name)
    puts first_name
    puts last_name
  end
  
  def client_of_demo_for_hash_in_arg
    # argument order is not important when use hash.
    demo_for_hash_in_arg(last_name:'Seangel', first_name:'Yu') 
  end

#----------------------------------
# use
  def demo_use_of_each
    poem_words = %w{ twinkle little star how I wonder }
    poen_words.each {|word| puts word }
    
    book_info = {first_name:'Yu', last_name:'Seangel'}
    book_info.each {|pare| puts pare }
    book_info.each {|name, value| puts "#{name} => #{value}" }
  end

  # map cooks a new array contains anything the block returned.
  # map is use
  def demo_for_map
    poem_words = %w{ twinkle little star how I wonder }
    character_count_of_each_word =  poem_words.map {|word| word.size}
    poem_words_lower =  poem_words.map {|word| word.downsize}    
  end

  def demo_for_inject
    poem_words = %w{ twinkle little star how I wonder }

    # total_size = 0.0
    # poem_words.each {|word| total_size+= word.size}
    # average_word_length = total_size/poem_words.count
    # ->
    
    total_size = poem_words.inject(0.0) {|result, word| word.size+result }
    average_word_length = total_size/poen_words.count
    
  end
    
  def demo_for_inplace_change
    poem_words = %w{ twinkle little star how I wonder }
    poem_words.reverse # poem_words are not changed
    poem_words.reverse! # poem_words are changed.
  end

end
