//
//  ContentView.swift
//  Disorder
//
//  Created by inkyu on 2020/05/10.
//  Copyright © 2020 q. All rights reserved.
//

import Calendar
import SwiftUI

struct ContentView: View {
  var body: some View {
    Monthly(weekOffset: 2, length: 30, header: "May 2020")
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
