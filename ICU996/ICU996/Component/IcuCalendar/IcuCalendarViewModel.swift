//
//  IcuCalendarViewModel.swift
//  ICU996
//
//  Created by Harry Twan on 2019/3/30.
//  Copyright © 2019 Harry Duan. All rights reserved.
//

import UIKit

class IcuCalendarViewModel: NSObject {
    
    private(set) var dateText: String = ""
    private(set) var weekdayText: String = ""
    private(set) var doText: String = ""
    private(set) var reasonText: String = ""
    
    override init() {
        super.init()
        initialDatas()
    }
    
    private func initialDatas() {
        updateDatas()
    }
    
    public func updateDatas() {
        let dateResult = IcuDateHelper.shared.getDate()
        dateText = "\(dateResult.0)月\(dateResult.1)日"
        let weekdayResult = IcuDateHelper.shared.getWeekDay()
        switch weekdayResult {
        case 1: weekdayText = "星期一"
        case 2: weekdayText = "星期二"
        case 3: weekdayText = "星期三"
        case 4: weekdayText = "星期四"
        case 5: weekdayText = "星期五"
        case 6: weekdayText = "星期六"
        case 7: weekdayText = "星期日"
        default: weekdayText = "未知"
        }
    }
}

