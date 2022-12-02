//
//  OutputView.swift
//  NumberBaseballGame
//
//  Created by Mason Kim on 2022/12/02.
//

import Foundation

struct OutputView {
    static func printInputGuide() {
        print("숫자를 입력해주세요 ex)123 : ")
    }
    
    static func printInputError() {
        print("입력이 잘못되었습니다. 다시 입력해주세요.")
    }
    
    static func printGameSuccess() {
        print("3개의 숫자를 모두 맞히셨습니다! 게임 종료")
    }
    
    static func printScoreResult(score: Score) {
        let strike = score.strike
        let ball = score.ball
        
        if strike == 0, ball == 0 {
            return print("낫싱")
        }
        
        if strike == 0 {
            return print("\(ball)볼")
        }
        
        if ball == 0 {
            return print("\(strike)스트라이크")
        }
        
        return print("\(strike)스트라이크 \(ball)볼")
    }
}

