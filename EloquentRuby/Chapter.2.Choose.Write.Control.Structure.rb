
#---------------------------------------------------------
# logical control
# IMPORTANT NOTE: only false and nil are treated as false.
# Do not intent to judge true, use false,
# 
#1. if/unless  while/until  for->each
#2. expression like normal speaking. 
#3. case when else(then) end: case use === to do comparison.
#4. ?:  
#5. lazy initialization with ||=


class Document
  attr_accessor :writable
  attraccesssor :read_only
  attr_reader   :title, :author, :content

  def title=( new_title )
    # if @writable
    #   @title = new_title
    # end
    # -->
    @title = new_title if @writable
  end

  def title2=( new_title )
    # if not @read_only        C/C++ 
    #   @title = new_title
    # end
    # -->
    # unless @read_only        ruby 
    #   @title = new_title
    # end
    # -->
    @title = new_title unless @read_only
  end

  def demo_for_while
    # while document.pages_available?
    #   document.print_next_page
    # end
    # --> 
    document.print_next_page while document.pages_available?
  end


  def demo_for_until
    # while ! document.is_printed?
    #   document.print_next_page
    # end
    # -->
    # until document.printed?
    #   document.print_next_page
    # end
    # --> 
    document.print_next_page until document.printed?
  end

  def demo_for_each
    fonts = { 'courier', 'times roman', 'helvetica'}
    # for font in fonts
    #   puts fonts
    # end
    # ->
    #fonts.each do |font|
    #  puts font
    #end
    # ->
    fonts.each {|font| puts font}
  end


  def demo_for_case
    # use === to do comparison.
    case title
      when 'War and Peace'
      puts 'Tolysoly'
      when 'Romeo and Juliet'
      puts 'Shakespare'
      else
      puts "Don't known"
    end

    # author = case title
    #            when 'War and Peace'
    #            'Tolysoly'
    #            when 'Romeo and Juliet'
    #            'Shakespare'
    #            else
    #            "Don't known"
    #          end
    # ->
    
    author = case title
               when 'War and Peace' then 'Tolysoly'
               when 'Romeo and Juliet' then 'Shakespare'
               else "Don't known"
               end

    puts author
    
    # check class of an object 
    case author
    when Document then puts "It's a document instance"
    when String then puts "It's a string instance"
    else puts "Don't know what it is"
    end
               
  end
  
  # use ?: if possible.
  def demo_for_?condition
    author = (title === 'Ware and Peace') ? 'Tolysoly': "Don't known"
    puts author
  end


  # use ||= as possible as it can
  def demo_for_lazy_initialize()
    # @author  = '' unless @author
    # ->
    @author ||= ''
  end
    

end

    
