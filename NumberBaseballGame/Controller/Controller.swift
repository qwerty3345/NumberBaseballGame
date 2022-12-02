//
//  Controller.swift
//  NumberBaseballGame
//
//  Created by Mason Kim on 2022/12/02.
//

import Foundation

class Controller {
    private let randomNumbers = [Int.random(in: 1...9), Int.random(in: 1...9), Int.random(in: 1...9)]

    func startGame() -> Bool {
        OutputView.printInputGuide()
        guard let input = readLine() else {
            OutputView.printInputError()
            return false
        }
        guard InputValidator.validateInput(for: input) else { return false }

        let num = Int(input) ?? 0

        print(randomNumbers)

        let score = getScore(for: num)
        OutputView.printScoreResult(score: score)

        return score.strike == 3
    }

    func getScore(for num: Int) -> Score {
        var strike = 0
        var ball = 0

        let inputNumbers = num.getDigits()

        for index in 0...2 {
            if inputNumbers[index] == randomNumbers[index] {
                strike += 1
            } else if randomNumbers.contains(inputNumbers[index]) {
                ball += 1
            }
        }

        return Score(strike: strike, ball: ball)
    }

}
