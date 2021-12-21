//
//  AgoraRtmPeerSubscriptionStatusErrorCode.swift
//  
//
//  Created by shaun on 12/21/21.
//

import AgoraRtmKit

extension AgoraRtmPeerSubscriptionStatusErrorCode: CustomStringConvertible {
    public var description: String {
        switch self {
        case .ok:
            return "0: The method call succeeds, or the operation succeeds."
        case .failure:
            return "1: Common failure. The user fails to subscribe to or unsubscribe from the status of the " +
            "specified peers."
        case .invalidArgument:
            return "2: The method call fails. The argument is invalid."
        case .rejected:
            return "3: RESERVED FOR FUTURE USE"
        case .timeout:
            // TODO: Check that these CONNECTION_STATEs are correct
            return "4: The SDK fails to receive a response from the server in 10 seconds. The current timeout is " +
            "set as 10 seconds. Possible reasons: The user is in the `CONNECTION_STATE_ABORTED` or " +
            "`CONNECTION_STATE_RECONNECTING` state."
        case .tooOften:
            return "5: The method call frequency exceeds the limit of 10 subscribes every five seconds."
        case .overflow:
            return "6: The number of peers, to whom you subscribe, exceeds the limit of 512."
        case .notInitialized:
            return "101: The SDK is not initialized."
        case .notLoggedIn:
            return "102: The user does not call the loginByToken method, or the method call of loginByToken does " +
            "not succeed before this operation."
        @unknown default:
            return "\(self.rawValue): Unknown error"
        }
    }
}
