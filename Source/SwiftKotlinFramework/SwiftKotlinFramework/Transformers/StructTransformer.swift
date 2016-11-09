//
//  StructTransformer.swift
//  SwiftKotlinFramework
//
//  Created by Angel Garcia on 09/11/16.
//  Copyright © 2016 Angel G. Olloqui. All rights reserved.
//

import Foundation

class StructTransformer: Transformer {
    func transform(formatter: Formatter) throws {
        formatter.forEachToken { (i, token) in
            if token == .keyword("struct") {
                formatter.replaceTokenAtIndex(i, with: .keyword("class"))
                formatter.insertTokens([
                    .keyword("data"),
                    .whitespace(" "),
                ], atIndex: i)
            }
        }
    }
}
