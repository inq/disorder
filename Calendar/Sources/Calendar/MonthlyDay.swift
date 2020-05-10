//
//  MonthlyDay.swift
//  Disorder
//
//  Created by inkyu on 2020/05/10.
//  Copyright © 2020 inkyu. All rights reserved.
//

import SwiftUI

struct MonthlyDay: View {
  let day: Int
  let today: Bool
  let size: CGFloat

  var body: some View {
    Text("\(day)")
      .frame(width: size, height: size)
      .foregroundColor(today ? .white : .black)
      .background(today ? Color.red : Color.white)
      .cornerRadius(size / 2)
  }
}

struct MonthlyDay_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      MonthlyDay(day: 24, today: false, size: 32)
        .previewDisplayName("Control")
    }
    .previewLayout(.fixed(width: 300, height: 70))
    .environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
  }
}
