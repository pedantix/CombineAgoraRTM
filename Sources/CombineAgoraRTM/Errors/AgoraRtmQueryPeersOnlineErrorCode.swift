//
//  AgoraRtmQueryPeersOnlineErrorCode.swift
//  
//
//  Created by shaun on 12/21/21.
//

import AgoraRtmKit

extension AgoraRtmQueryPeersOnlineErrorCode: CustomStringConvertible {
    public var description: String {
        switch self {
        case .ok:
            return "0: The method call succeeds."
        case .failure:
            return "1: The method call fails."
        case .invalidArgument:
            return "2: The method call fails. The argument is invalid."
        case .rejected:
            return "3: RESERVED FOR FUTURE USE"
        case .timeout:
            return "4: The SDK has not received a response from the server for 10 seconds." +
                " The current timeout is set as 10 seconds. Possible reasons: The user is in the" +
                " `AgoraRtmConnectionStateAborted` or `AgoraRtmConnectionStateReconnecting` state."
        case .tooOften:
            return "5: The method call frequency of this method exceeds the limit of 10 queries every five seconds."
        case .notInitialized:
            return "101: The SDK is not initialized."
        case .notLoggedIn:
            return "102: The user does not call the `loginByToken` method, or the method call of `loginByToken`" +
                " does not succeed before querying the online status."
        @unknown default:
            return "\(self.rawValue): Unknown error"
        }
    }
}
