//
//  Monthly.swift
//  Disorder
//
//  Created by inkyu on 2020/05/10.
//  Copyright © 2020 inkyu. All rights reserved.
//

import SwiftUI

public struct Monthly: View {
  let weekOffset: Int
  let length: Int
  let header: String

  public init(weekOffset: Int, length: Int, header: String) {
    self.weekOffset = weekOffset
    self.length = length
    self.header = header
  }

  var calendar: [[Int]] {
    var rowArray = [[Int]]()
    let days = 31
    for row in 0...(days / 7) {
      let offset = row * 7
      let columnArray = (0..<7).map { num in num + offset }
      rowArray.append(columnArray)
    }
    return rowArray
  }

  public var body: some View {
    VStack(alignment: HorizontalAlignment.center, spacing: 10) {
      Text(self.header)
      VStack(alignment: .leading, spacing: CGFloat(5)) {
        ForEach(calendar, id: \.self) { week in
          self.weekView(week: week)
        }
      }
    }
  }

  func weekView(week: [Int]) -> some View {
    HStack {
      ForEach(week, id: \.self) { day in
        HStack() {
          Spacer()
          MonthlyDay(day: day, today: day == 5, size: 32)
          Spacer()
        }
      }
    }
  }
}

public struct Monthly_Previews: PreviewProvider {
  public static var previews: some View {
    Monthly(weekOffset: 2, length: 28, header: "Feb 2019")
  }
}
