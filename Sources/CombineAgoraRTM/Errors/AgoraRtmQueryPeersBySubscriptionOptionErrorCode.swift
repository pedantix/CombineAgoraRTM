//
//  AgoraRtmQueryPeersBySubscriptionOptionErrorCode.swift
//  
//
//  Created by shaun on 12/21/21.
//

import AgoraRtmKit

extension AgoraRtmQueryPeersBySubscriptionOptionErrorCode: CustomStringConvertible {
    public var description: String {
        switch self {
        case .ok:
            return "0: The method call succeeds, or the operation succeeds."
        case .failure:
            return "1: Common failure. The user fails to query peers by subscription option type."
        case .timeout:
            return "2: The SDK fails to receive a response from the server in 5 seconds. The current" +
            " timeout is set as 5 seconds. Possible reasons: The user is in the `AgoraRtmConnectionStateAborted` " +
            "or `AgoraRtmConnectionStateReconnecting` state."
        case .tooOften:
            return "3: The method call frequency exceeds the limit of 10 subscribes every five seconds."
        case .notInitialized:
            return "101: The SDK is not initialized."
        case .notLoggedIn:
            return "102: The user does not call the `loginByToken` method, or the method call of `loginByToken`" +
            " does not succeed before this operation."
        @unknown default:
            return "\(self.rawValue): Unknown error"
        }
    }
}
