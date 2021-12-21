//
//  AgoraRtmSendChannelMessageErrorCode.swift
//  
//
//  Created by shaun on 12/20/21.
//

import AgoraRtmKit

// swiftlint:disable line_length
extension AgoraRtmSendChannelMessageErrorCode: CustomStringConvertible {
    public var description: String {
        switch self {
        case .errorOk:
            return "0: The server receives the channel message."
        case .errorFailure:
            return "1: The user fails to send the channel message state."
        case .errorTimeout:
            return "2: The SDK does not receive a response from the server in 10 seconds. The current timeout is set as 10 seconds. Possible reasons: The user is in the `AgoraRtmConnectionStateAborted` or `AgoraRtmConnectionStateReconnecting` state."
        case .tooOften:
            return "3: The method call frequency exceeds the limit of 180 calls every three seconds (channel and peer messages taken together)."
        case .invalidMessage:
            return "4: The message is null or exceeds 32 KB in length."
        case .errorNotInitialized:
            return "101: The SDK is not initialized."
        case .notLoggedIn:
            return "102: The user does not call the loginByToken method, or the method call of loginByToken does not succeed before sending out a channel message."
        @unknown default:
            return "\(self.rawValue): Unknown error"
        }
    }
}
// swiftlint:enable line_length
