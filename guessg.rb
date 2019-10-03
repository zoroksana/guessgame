puts("Привіт! Ласкаво просимо у гру ти маєш 10 спроб аби відгадати число")

def generate_number
  rand 1..1000
end
win=false
guess_count=0
guess_limit=10
more_then_guess_limit=false
while win==false & !more_then_guess_limit
  guess=gets.to_i
  guess_count+=1
  if guess>generate_number then
    puts("Забагато береш")
  elsif guess<generate_number then
    puts ("Більше давай")
  else
    puts("Вітаю! Місія виконана!")
    win=true
  end
  unless guess_count<guess_limit then
    puts("Ви провалили місію. Загадане число:")
    print generate_number
  end
end




