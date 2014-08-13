
# if/unless  while/until  for->each
# expression like normal speaking. 



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
    fonts.each do |font|
      puts font
    end
  end


end

    
