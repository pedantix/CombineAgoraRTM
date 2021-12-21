//
//  AgoraRtmSendPeerMessageErrorCode.swift
//  
//
//  Created by shaun on 12/20/21.
//

import AgoraRtmKit

extension AgoraRtmSendPeerMessageErrorCode: CustomStringConvertible {
    public var description: String {
        switch self {
        case .ok:
            return "0: The specified user receives the peer-to-peer message."
        case .failure:
            return "1: The user fails to send the peer-to-peer message."
        case .timeout:
            return "2: A timeout occurs when sending the peer-to-peer message. The current timeout is set as 10" +
            " seconds. Possible reasons: The user is in the AgoraRtmConnectionStateAborted or" +
            " `AgoraRtmConnectionStateReconnecting` state."
        case .peerUnreachable:
            return "3: The user is offline and has not received the peer-to-peer message."
        case .cachedByServer:
            return "4: The specified user is offline and does not receive the peer-to-peer message, but the server" +
            " has cached the message and will send the message to the specified user when he/she is back online."
        case .tooOften:
            return "5: The method call frequency exceeds the limit of 180 calls every three seconds (channel and" +
            " peer messages taken together)."
        case .invalidUserId:
            return "6: The user ID is invalid."
        case .invalidMessage:
            return "7: The message is null or exceeds 32 KB in length."
        case .notInitialized:
            return "101: The SDK is not initialized."
        case .notLoggedIn:
            return "102: The sender did not call the `loginByToken` method, or the method call of `loginByToken`" +
            " does not succeed before sending the peer-to-peer message."
        case .imcompatibleMessage: // TODO: Ping weChat to add this to the web docs
            return "8: The message receiver‘s SDK is of an earlier version and hence cannot recognize this message."
        @unknown default:
            return "\(self.rawValue): Unknown error"
        }
    }
}
