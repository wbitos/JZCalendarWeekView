//
//  JZHourBackground.swift
//  JZCalendarWeekView
//
//  Created by 王义平 on 2020/9/3.
//  Copyright © 2020 Jeff Zhang. All rights reserved.
//

import UIKit

open class JZHourBackground: UICollectionReusableView {
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open func updateView(date: Date) {
        let weekday = Calendar.current.component(.weekday, from: date)
        let hour = Calendar.current.component(.hour, from: date)
        
        if weekday == 1 || weekday == 7 {
            if (hour >= 0 && hour < 8) || (hour >= 22) {
                self.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 0.2)
            }
            else {
                self.backgroundColor = UIColor(red: 0.0, green: 1.0, blue: 0.0, alpha: 0.2)
            }
        }
        else {
            if (hour >= 0 && hour < 8) || (hour >= 22) {
                self.backgroundColor = UIColor(red: 1.0, green: 0, blue: 0, alpha: 0.2)
            }
            else {
                self.backgroundColor = .white
            }
        }

    }

}
