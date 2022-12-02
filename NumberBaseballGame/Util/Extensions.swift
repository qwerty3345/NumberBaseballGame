//
//  Utils.swift
//  NumberBaseballGame
//
//  Created by Mason Kim on 2022/12/02.
//

import Foundation



extension Int {
    // 숫자의 각 자릿수 반환
    func getDigits() -> [Int] {
        return String(self).map { $0.wholeNumberValue ?? 0 }
    }
}
