#created by Kevin Kwon
#updated to make it harder.
puts "CONFUCIUS SAY -> Guess a number between 0 and 100:"
puts "====Press ENTER to continue.===="
gets
puts "You have 5 tries. GOOD LUCK!"
puts '====Press ENTER to continue.===='
gets
puts 'CONFUCIUS SAY: START!'
win = rand(100).to_i
tries = 5
while tries > 0
  guess = gets.chomp
  if guess.to_i < 0 || guess.to_i > 100 || guess =~ /[A-Za-z]/
    puts "CONFUCIUS SAY YOU STUPID! FOLLOW THE RULES!"
    puts "Guess a number between 0 and 100:"
    tries = tries - 1
    puts "You have #{tries} tries left."
  elsif guess.to_i > win
    puts "CONFUCIUS SAY GUESS TOO HIGH STUPID! TRY AGAIN:"
    tries = tries - 1
    puts "You have #{tries} tries left."
  elsif guess.to_i < win
    puts "CONFUCIUS SAY GUESS TOO LOW STUPID! TRY AGAIN:"
   tries = tries - 1
    puts "You have #{tries} tries left."
  else
    puts "CONFUCIUS SAY YOU WISE LIKE THE HERMIT!"
    abort
  end
end

puts "CONFUCIUS SAY GAME OVER STUPID!"
    
