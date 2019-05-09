def puts_git(cmd)
  puts `git #{cmd} -h`
end

def menu
  puts "1: Enter git command"
  puts "2: Exit"
  choice = gets.to_i
  print `clear`
  case choice
    when 1
      puts "Enter git command"
      puts_git(gets.strip)
      menu
    when 2
      puts "Thanks for using us!"
      Exit
    else
      puts "invalid input"
      menu
    end
  end
end

menu