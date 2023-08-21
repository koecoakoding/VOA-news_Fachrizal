//
//  DateFormatter.swift
//  VOA
//
//  Created by Randy Senjaya on 20/08/23.
//

import Foundation

extension String{
    func formatdate() -> String{
        let dateformatter = DateFormatter()
        dateformatter.locale = Locale(identifier: "en_US_POSIX")
        dateformatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        
        if let date = dateformatter.date(from: self) {
            dateformatter.dateFormat = "MMM d, h:mm a"
            return dateformatter.string(from: date)
        }
        
        return ""
        
    }
}
