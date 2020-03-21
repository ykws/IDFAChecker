//
//  IDFA.swift
//  IDFAChecker
//
//  Created by KAWASHIMA Yoshiyuki on 2020/03/21.
//  Copyright © 2020 ykws. All rights reserved.
//

import Foundation
import Combine
import AdSupport

class IDFA: ObservableObject {
    @Published var uuidString: String = "Limit Ad Tracking"
    
    func retreive() {
        let manager = ASIdentifierManager.shared()
        if manager.isAdvertisingTrackingEnabled {
            uuidString = manager.advertisingIdentifier.uuidString
            print(uuidString)
        }
    }
}
