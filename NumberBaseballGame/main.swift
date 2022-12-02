//
//  main.swift
//  NumberBaseballGame
//
//  Created by Mason Kim on 2022/12/02.
//

import Foundation

print("Hello, World!")

let controller = Controller()

while true {
    if controller.startGame() {
        OutputView.printGameSuccess()
        break
    }
}

