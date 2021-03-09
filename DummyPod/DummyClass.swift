//
// Created by Ramirez, Luis Manuel on 09/03/21.
//

import Foundation

enum DummyClassError: Error {
    case NotImplementedError
    case CapacityIsUnavailable
}

open class DummyClass {
    public func getAvailableDiskSpace() -> Result<Int, Error> {
        let fileURL = URL(fileURLWithPath: NSHomeDirectory() as String)
        do {
            let values = try fileURL.resourceValues(forKeys: [.volumeAvailableCapacityForImportantUsageKey])
            if let capacity = values.volumeAvailableCapacityForImportantUsage {
                return .success(Int(capacity))
            } else {
                return .failure(DummyClassError.CapacityIsUnavailable)
            }
        } catch {
            return .failure(error)
        }
    }
}
