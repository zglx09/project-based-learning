def tic_tac_toe():

  options = [1,2,3]   # Available options for validating user's input
  current_player = 1   # Current player state
  occupied_slots = []   # Tracking of occupied slots

  # Initialised empty board
  row1 = [' ', ' ', ' ']
  row2 = [' ', ' ', ' ']
  row3 = [' ', ' ', ' ']

  # Defined function for displaying board. Will be used later on to update board's visuals after each player's turn.
  def display_board():
    print(row1)
    print(row2)
    print(row3)

  # Defined function for ensuring a valid input is passed by user else to keep making them pass one.
  def validate_input(prompt, valid_options):
    while True:
      user_input = input(prompt).strip() 
      if user_input in valid_options:
        return user_input
      else:
        print(f"Invalid input, please provide only {valid_options}.")

  # GAME START
  print("Welcome to tic-tac-toe!")
  display_board()

  while True:
    
    #Assigning of symbols base on current player number
    symbol = 'X' if current_player == 1 else 'O'

    print(f"Player {current_player}, please make your move")

    # Getting user's input for ROW
    row_choice = int(validate_input("Please choose either row 1, 2, or 3: ", ['1','2','3']))

    # Getting user's input for the position number
    position_choice = int(validate_input("Please choose either position 1, 2, or 3: ", ['1','2','3']))

    # Validating of user's input to ensure that the space selected is not already occupied
    while (str(row_choice + position_choice) in occupied_slots):
      print("The space selected is already occupied, please reselect")
      row_choice = int(validate_input("Please choose either row 1, 2, or 3: ", ['1','2','3']))
      position_choice = int(validate_input("Please choose either position 1, 2, or 3: ", ['1','2','3']))

    # Update variables with user's choice
    else:
      if int(row_choice) == 1:
        row1[int(position_choice)-1] = symbol
        occupied_slots.append((row_choice, position_choice))

      elif int(row_choice) == 2:
        row2[int(position_choice)-1] = symbol
        occupied_slots.append((row_choice, position_choice))

      elif int(row_choice) == 3:
        row3[int(position_choice)-1] = symbol
        occupied_slots.append((row_choice, position_choice))

      # Display the updated board
      display_board()

      # Check for WIN conditions
      if ( 
        # Diagonals
        (row1[0] == symbol and row2[1] == symbol and row3[2] == symbol) or
        (row1[2] == symbol and row2[1] == symbol and row3[0] == symbol) or

        # Horizontals
        (row1[0] == symbol and row1[1] == symbol and row1[2] == symbol) or
        (row2[0] == symbol and row2[1] == symbol and row2[2] == symbol) or
        (row3[0] == symbol and row3[1] == symbol and row3[2] == symbol) or

        # Verticals
        (row1[0] == symbol and row2[0] == symbol and row3[0] == symbol) or 
        (row1[1] == symbol and row2[1] == symbol and row3[1] == symbol) or 
        (row1[2] == symbol and row2[2] == symbol and row3[2] == symbol)
      ):
        print(f"Player {current_player} wins")
        break

      # Check for DRAW conditions
      elif (' ' not in row1) and (' ' not in row2) and (' ' not in row3):
        print("Its a draw!")
        break

      # Check if user wants to continue the game 
      game_progress = validate_input("Would you like to continue the game? Y/N", ['Y', 'N'])

      if game_progress == 'N':
        print("Goodbye!")
        break
      else:
        # Switch players after each turn
        current_player = 2 if current_player == 1 else 1
