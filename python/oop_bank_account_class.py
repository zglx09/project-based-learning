class Account:

  def __init__(self, owner, balance):
    self.owner = owner
    self.balance = balance
    self.action = None
    self.action_amount = None

  def __str__(self):
    return f"Account owner: {self.owner} \nAccount balance: {self.balance}"

  # First function for getting user's input and validating of input
  def transaction(self):

    # Asking if user would like to withdraw or deposit
    self.action = input(f"Hello {self.owner}, welcome to the Bank! How can we help you today? [Withdraw/Deposit] ")
    while self.action.strip().lower() not in ['withdraw', 'deposit']:
      print("Please indicate only withdraw or deposit")
      self.action = input(f"Hello {self.owner}, welcome to the Bank! How can we help you today? [Withdraw/Deposit] ")

    self.action = self.action.lower()

    # Asking for the amount
    self.action_amount = input(f"how much would you like to {self.action} today? Your current available balance is ${self.balance} ")
    while not self.action_amount.isdigit() or int(self.action_amount) <= 0:
      print("Please input a valid number")
      self.action_amount = input(f"how much would you like to {self.action} today? Your current available balance is ${self.balance} ")

    self.action_amount = int(self.action_amount)

    
    if self.action == 'deposit':
      return self.deposit()
    else:
      return self.withdraw()


  def deposit(self):
    self.balance += self.action_amount # Update balance
    return f"Deposit successful. Your updated balance: ${self.balance}" # Inform user that deposit is done

  def withdraw(self):
    while self.action_amount > self.balance: # Check if withdrawal amount exceeds the available balance
      print("Sorry, the withdrawal amount exceeds your available balance.")
      self.action_amount = input(f"how much would you like to {self.action} today? Your current available balance is ${self.balance} ")

      while not self.action_amount.isdigit() or int(self.action_amount) <= 0:
        print("Please input a valid number")
        self.action_amount = input(f"how much would you like to {self.action} today? Your current available balance is ${self.balance} ")

      self.action_amount = int(self.action_amount)

    self.balance -= self.action_amount
    return f"Withdrawal of amount ${self.action_amount} is successful. Your updated balance: ${self.balance} "
