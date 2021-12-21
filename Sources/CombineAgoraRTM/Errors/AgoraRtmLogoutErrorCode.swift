//
//  AgoraRtmLogoutErrorCode.swift
//  
//
//  Created by shaun on 12/21/21.
//

import AgoraRtmKit

extension AgoraRtmLogoutErrorCode: CustomStringConvertible {
    public var description: String {
        switch self {
        case .ok:
            return "0: Logout succeeds. No error occurs."
        case .rejected:
            return "1: RESERVED FOR FUTURE USE"
        case .notInitialized:
            return "101: The SDK is not initialized."
        case .notLoggedIn:
            return "102: The user does not call the loginByToken method, or the method call of loginByToken" +
            " does not succeed before the user logs out of the Agora RTM system."
        @unknown default:
            return "\(self.rawValue): Unknown error"
        }
    }
}
