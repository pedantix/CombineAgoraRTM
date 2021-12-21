//
//  AgoraRtmLeaveChannelErrorCode.swift
//  
//
//  Created by shaun on 12/21/21.
//

import AgoraRtmKit

extension AgoraRtmLeaveChannelErrorCode: CustomStringConvertible {
    public var description: String {
        switch self {
        case .ok: return "0: The user leaves the channel successfully."
        case .failure: return "1: The user fails to leave the channel."
        case .rejected: return "2: RESERVED FOR FUTURE USE"
        case .notInChannel: return "3: The user is not in the channel."
        case .notInitialized: return "101: The SDK is not initialized."
        case .notLoggedIn:
            return "102: The user has not called the `loginByToken` method, or the method call of `loginByToken`" +
            "has not succeeded before leaving the channel."
        @unknown default:
            return "\(self.rawValue): Unknown error"
        }
    }
}
