from random import shuffle

# First function where it takes in a user input and have them guess the location of the ball.
def player_guess():
  guess = ''
  while guess not in ['0', '1', '2']:
    guess = input("Pick a number: 0, 1, or 2 ")
  return int(guess)

# Second function shuffles the list, and returns the index of 'O' new position
def shuffle_and_find():
  mylist = [' ', 'O', ' ']
  shuffle(mylist)

# We can do a tuple unpacking here since enumerate returns us a tuple of the index and the value
  for index, value in enumerate(mylist):
    if value == 'O':
      # print(mylist)
      return index

  return mylist

# Third and last function compares the user's input with the new location of 'O' identified from the second function.
def check_guess():
    if player_guess() == shuffle_and_find():
        print("correct!")
    else:
        print("sorry, guess again...")
        print(shuffle_and_find())
