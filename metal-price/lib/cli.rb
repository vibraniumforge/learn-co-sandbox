# class MetalPrice::CLI
class Cli
  def call
    puts "cli.lib fires"
    puts "Welcome to the precious metal current price finder!"
    list_choices
    menu
    goodbye
  end
  
  def list_choices
    puts "Choose a number 1-4:"
    puts "1 for Gold"
    puts "2 for Silver"
    puts "3 for Platinum"
    puts "4 for Palladium"
    puts "'list' to see the choices again."
    puts "Or 'exit' to exit the app."
  end
  
  def menu
    user_input=nil
    while user_input!="exit"
      user_input=gets.strip
      case user_input
        when "1"
          puts"1 fires"
        when"2"
          puts"2 fires"
        when"3"
          puts "3 fires"
        when"4"
         puts "4 fires"
        when "list"
          list_choices
        else
          puts "Please enter 1-4, 'list', or 'exit'"
       end
      end
  end
  
  def goodbye
    puts "Thanks for using our program!"
  end
  
end

Cli.new.call