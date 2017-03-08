running = true
tries = 3
secret_number = rand(1..10)

puts "Welcome to Guess the Secret Number!"
sleep 2
puts "Choose a number from 1 - 10 #{secret_number}"
sleep 2
puts "Good Luck!"
while running ==true
  input = gets.chomp
  if input == 'quit'
    exit
  end
  tries -=1
  puts "#{tries} Tries left"
  if tries == 0
    puts "You're out of tries! Try Again"
    break
  end


  input = input.to_i
  if input == secret_number
    puts "Congratulations, you've guessed the secret number! #{[secret_number]}"
    running = false
  elsif input < secret_number
    puts "Oops! Higher"
  elsif input > secret_number
    puts "Oops! Lower"
  end
end
