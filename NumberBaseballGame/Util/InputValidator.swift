//
//  InputValidator.swift
//  NumberBaseballGame
//
//  Created by Mason Kim on 2022/12/02.
//

import Foundation

struct InputValidator {
    static func validateInput(for input: String) -> Bool {
        guard let number = Int(input) else {
            print("입력이 잘못되었습니다. 다시 입력해주세요.")
            return false
        }
        
        guard 100 <= number && number <= 999 else {
            print("세자리수의 숫자를 입력해주세요")
            return false
        }
        return true
    }
}
