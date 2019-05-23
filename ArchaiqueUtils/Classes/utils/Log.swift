//
//  Log.swift
//  ArchaiqueUtils
//
//  Created by shiuchi on 2019/05/23.
//  Copyright © 2019 shiuchi. All rights reserved.
//

/// ビルドスキームに応じてLogを振り分ける
///
///  - parameter message:  ログメッセージ
///  - parameter function: 呼び出し元function (option)
///  - parameter file:     呼び出し元file (option)
///  - parameter line:     呼び出し元line (option)
public func log(_ messages: Any?..., function: String = #function, file: String = #file, line: Int = #line) {
    if Logger.logLevel {
        let _file = file.components(separatedBy: "/").last!
        let _function = function.replacingOccurrences(of: "()", with: "")
        if !messages.isEmpty {
            let m = messages.map { message -> String in
                if let message = message {
                    return "\(message)"
                }else{
                    return "nil"
                }
                }.joined(separator: ",")
            print("log \(m) (\(_file).\(_function) Line:\(line))")
        } else{
            print("log (\(_file).\(_function) Line:\(line))")
        }
    }
}

public class Logger {
    public static var logLevel: Bool = false
}
