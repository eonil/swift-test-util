/// Copied from: https://gist.github.com/kandelvijaya/8095de4ec37f225b7e3fee171d8909fb

import Foundation

/// Most precise time keeper
/// for more information on the benchmarks go to www.kandelvijaya.com
public func measureTimeUsingMach(_ block: () -> Void) -> TimeInterval {
    var info = mach_timebase_info()
    guard mach_timebase_info(&info) == KERN_SUCCESS else { return -1 }
    let start = mach_absolute_time()
    block()
    let end = mach_absolute_time()
    let elapsed = end - start
    let nanos = elapsed * UInt64(info.numer) / UInt64(info.denom)
    return TimeInterval(nanos) / TimeInterval(NSEC_PER_SEC)
}
