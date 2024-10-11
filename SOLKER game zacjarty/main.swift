// main.swift
// SOLKER game zacjarty
//
// Created by Zachary Clayville on 10/11/24.

import Foundation

print("Welcome to my Soccer Game!")

var playerScore = 0
var computerScore = 0
let maxScore = 3

func shootGoal() -> Bool {
    let randomOutcome = Int.random(in: 1...2)
    return randomOutcome == 1
}

while playerScore < maxScore && computerScore < maxScore {
    print("Kick the ball! Type 'kick' to shoot or 'quit' to exit:")

    if let input = readLine() {
        if input == "kick" {
            if shootGoal() {
                print("Goal!!! You scored!")
                playerScore += 1
            } else {
                print("Ahahh you missed! Better luck next time!")
                if shootGoal() {
                    print("Oh no! The computer scored!")
                    computerScore += 1
                } else {
                    print("Phew, the computer missed too!")
                }
            }
        } else if input == "quit" {
            print("Leaving already? See you next time!")
            break
        } else {
            print("Oops! That's not a valid move, type 'kick' or 'quit'.")
        }
    }

    print("Score - You: \(playerScore), Computer: \(computerScore)")
}

if playerScore == maxScore {
    print("Congratulations!!! You won the soccer match!")
} else if computerScore == maxScore {
    print("Game over! The computer won. Better luck next time!")
} else {
    print("Thanks for playing soccer! Catch you later!")
}
