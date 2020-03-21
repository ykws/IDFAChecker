//
//  ContentView.swift
//  IDFAChecker
//
//  Created by KAWASHIMA Yoshiyuki on 2020/03/21.
//  Copyright © 2020 ykws. All rights reserved.
//

import SwiftUI
import Combine

struct ContentView: View {
    @EnvironmentObject var idfa: IDFA

    var body: some View {
        Text(idfa.uuidString)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(IDFA())
    }
}
