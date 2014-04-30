import random
import sys

secret = random.randint(1, 10)

guess = input("I'm thinking of a number between 1 and 10. Can you guess it?\n")

while guess != secret:
	if guess < secret:
		guess = input("Too low!\n")
	elif guess > secret:
		guess = input("Too high!\n")

print "Congratulations!"
