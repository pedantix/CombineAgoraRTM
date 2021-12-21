//
//  AgoraRtmLoginErrorCode.swift
//  
//
//  Created by shaun on 12/21/21.
//

import AgoraRtmKit

extension AgoraRtmLoginErrorCode: CustomStringConvertible {
    public var description: String {
        switch self {
        case .ok: return "0: Login succeeds. No error occurs."
        case .unknown: return "1: Login fails for reasons unknown."
        case .rejected: return "2: Login is rejected by the server."
        case .invalidArgument: return "3: Invalid login arguments."
        case .invalidAppId: return "4: The App ID is invalid."
        case .invalidToken: return "5: The token is invalid."
        case .tokenExpired: return "6: The token has expired, and hence login is rejected."
        case .notAuthorized: return "7: Unauthorized login."
        case .alreadyLogin:
            return "8: The user has already logged in or is logging in the Agora RTM system, or the user" +
            " has not called the `logoutWithCompletion` method to leave the `AgoraRtmConnectionStateAborted` state."
        case .timeout: return "9: The login times out. The current timeout is set as 12 seconds."
        case .loginTooOften: return "10: The call frequency of the loginByToken method exceeds the limit" +
            "of two queries per second."
        case .loginNotInitialized: return "101: The SDK is not initialized."
        @unknown default:
            return "\(self.rawValue): Unknown error"
        }
    }
}
