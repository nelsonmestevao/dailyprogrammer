from colorama import Fore, Back, Style

def christmastree2(n: int):
  for (i, j) in zip(range (n + 1, 0, -1), range(0,n)):
    print(" " * (i - 1), end = "")

    if j == 0:
      print(Fore.YELLOW + "*" * (j+1), end = "")
    else:
      print(Fore.RED + "O", end = "")
      print(Fore.GREEN + "#" * j, end = "")

    print ("#" * (j-1), end= "")
    if j != 0:
      print (Fore.RED + "O")
    else:
      print("")

  print(" " * (j+1), end = "")
  print('\033[41m' + "|" + Style.RESET_ALL)
