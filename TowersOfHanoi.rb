PEGS = { "a" => [3, 2, 1],
         "b" => [],
         "c" => []
}

# Method to display pegs
def displaypegs()
  puts "Peg A = " + PEGS["a"].to_s
  puts "Peg B = " + PEGS["b"].to_s
  puts "Peg C = " + PEGS["c"].to_s
  puts ""
end

# Method to perform user move
def usermove(from, to)
  # If FROM peg is empty, there is no disk to move. Display error message to user
  if PEGS[from].count == 0
      puts "From peg is empty, please choose a different peg!"
  # If the disk the user is trying to move is larger than the disk on the TO peg,
  # don't allow the move. Users can be so sneaky at times ;)
  elsif (PEGS[to].count != 0) && PEGS[from].last > PEGS[to].last
    puts "Don't be sneaky, you can't do that!"
  # if everything looks ok, just pop the FROM peg and push disk to the TO peg
  else
    PEGS[to] << PEGS[from].pop
  end
end

def hanoi()
  # Display the initial state of the pegs
  displaypegs()
  # Initialize WIN to false. You haven't won the game yet ;)
  win = false

  # Since you haven't won the game yet, maybe you should play till you win?
  while !win
    # Get user input. Store from and to pegs to perform operations on them later  
    puts "Which peg do you want to pick the disk from?"
    from = gets.chomp.downcase
    puts "Which peg to you want to put the disk on?"
    to = gets.chomp.downcase

    # Make the move based on user input
    usermove(from, to)
    # Display the pegs to show the latest move
    displaypegs()
    # Check if you won
    if PEGS["c"] == [3, 2, 1]
      win = true
      puts "Congrats, you won :)"
      puts ""
    end
  end
end