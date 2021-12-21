//
//  AgoraRtmChannelMemberCountErrorCode.swift
//  
//
//  Created by shaun on 12/21/21.
//

import AgoraRtmKit

extension AgoraRtmChannelMemberCountErrorCode: CustomStringConvertible {
    public var description: String {
        switch self {
        case .ok: return "0: The operation succeeds."
        case .failure: return "1: Unknown common failure."
        case .invalidArgument: return "2: One or several of your channel IDs is invalid."
        case .tooOften: return "3: The method call frequency exceeded the limit of one query per second."
        case .timeout: return "4: A timeout occurs during this operation. The current timeout is set as five seconds."
        case .exceedLimit: return "5: The number of the channels that you query is greater than 32."
        case .notInitialized: return "101: The SDK is not initialized."
        case .notLoggedIn: return "102: The user does not call the `loginByToken` method, or the method call of" +
            " `loginByToken` does not succeed before this operation."
        @unknown default:
            return "\(self.rawValue): Unknown error"
        }
    }
}
