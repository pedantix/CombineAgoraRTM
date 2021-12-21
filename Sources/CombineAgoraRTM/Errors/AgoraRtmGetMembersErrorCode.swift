//
//  AgoraRtmGetMembersErrorCode.swift
//  
//
//  Created by shaun on 12/21/21.
//

import AgoraRtmKit

extension AgoraRtmGetMembersErrorCode: CustomStringConvertible {
    public var description: String {
        switch self {
        case .ok: return "0: The user retrieves a member list of the channel successfully."
        case .failure: return "1: The user fails to retrieve a member list of the channel."
        case .rejected: return "2: RESERVED FOR FUTURE USE"
        case .timeout: return "3: A timeout occurs when retreiving a member list of the channel. The current timeout" +
            " is set as five seconds. Possible reasons: The user is in the `AgoraRtmConnectionStateAborted` or" +
            " `AgoraRtmConnectionStateReconnecting` state."
        case .tooOften: return "4: The method call frequency exceeds the limit of five queries every two seconds."
        case .notInChannel: return "5: The user is not in channel."
        case .notInitialized: return "101: The SDK is not initialized."
        case .notLoggedIn: return "102: The user does not call the loginByToken method, or the method call of " +
            "loginByToken does not succeed before retrieving a member list."
        @unknown default:
            return "\(self.rawValue): Unknown error"
        }
    }
}
