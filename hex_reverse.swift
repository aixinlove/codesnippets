//
//  home.swift
//  Main
//  hex reverse 
//  00 1F 66 07 3F 26 0F 66 07 7F 00 0C 0F  -> FF E0 99 F8 C0 D9 F0 99 F8 80 FF F3 F0
//  Created by peng on 15/8/13.
//  Copyright © 2015年 peng. All rights reserved.
//
import Foundation

if let input = Process.arguments.last{
    let output = " ".join(input.componentsSeparatedByString(" ").map{"".join($0.characters.filter{ $0 != Character(" ")}.map{ String(format: "%X", 15 - strtoul(String($0), nil, 16))})})
    print(output, appendNewline: true)
}
