//
//  Updates+UIDevice.swift
//  Updates
//
//  Created by Ross Butler on 8/8/19.
//

import Foundation
#if os(iOS)
import UIKit
#endif

public extension Updates {
    
    static func checkForUpdates(completion: @escaping (UpdatesResult) -> Void) {
        #if os(iOS)
        Updates.checkForUpdates(currentOSVersion: UIDevice.current.systemVersion, completion: completion)
        #elseif os(macOS)
        Updates.checkForUpdates(currentOSVersion: "\(ProcessInfo.processInfo.operatingSystemVersion.majorVersion).\(ProcessInfo.processInfo.operatingSystemVersion.minorVersion).\(ProcessInfo.processInfo.operatingSystemVersion.patchVersion)", completion: completion)
        #endif
    }
    
}
