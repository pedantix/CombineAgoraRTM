//
//  AgoraRtmJoinChannelErrorCode.swift
//  
//
//  Created by shaun on 12/21/21.
//

import AgoraRtmKit

extension AgoraRtmJoinChannelErrorCode: CustomStringConvertible {
    public var description: String {
        switch self {
        case .channelErrorOk: return "0: The user joins the channel successfully."
        case .channelErrorFailure: return "1: The user fails to join the channel."
        case .channelErrorRejected: return "2: RESERVED FOR FUTURE USE"
        case .channelErrorInvalidArgument:
            return "3: The user fails to join the channel because the argument is invalid."
        case .channelErrorTimeout:
            return "4: A timeout occurs when joining the channel. The current timeout is" +
            " set as five seconds. Possible reasons: The user is in the " +
            "`AgoraRtmConnectionStateAborted` or `AgoraRtmConnectionStateReconnecting` state."
        case .channelErrorExceedLimit:
            return "5: The number of the RTM channels you are in exceeds the limit of 20."
        case .channelErrorAlreadyJoined: return "6: The user is joining or has joined the channel."
        case .channelErrorTooOften:
            return "7: The method call frequency exceeds the limit of 50 queries every three seconds."
        case .sameChannelErrorTooOften: return "8: The method call frequency exceeds the limit of 2" +
            " queries per 5 seconds for the same channel."
        case .channelErrorNotInitialized: return "101: The SDK is not initialized."
        case .channelErrorNotLoggedIn: return "102: The user does not call the loginByToken method, " +
            "or the method call of loginByToken does not succeed before joining the channel."
        @unknown default:
            return "\(self.rawValue): Unknown error"
        }
    }
}
