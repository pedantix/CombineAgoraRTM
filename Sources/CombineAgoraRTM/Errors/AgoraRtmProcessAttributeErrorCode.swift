//
//  AgoraRtmProcessAttributeErrorCode.swift
//  
//
//  Created by shaun on 12/21/21.
//

import AgoraRtmKit

// swiftlint:disable line_length
extension AgoraRtmProcessAttributeErrorCode: CustomStringConvertible {
    public var description: String {
        switch self {
        case .attributeOperationErrorOk:
            return "0: The attribute operation succeeds."
        case .attributeOperationErrorNotReady:
            return "1: DEPRECATED"
        case .attributeOperationErrorFailure:
            return "2: The attribute operation fails."
        case .attributeOperationErrorInvalidArgument:
            return "3: The argument you put for this attribute operation is invalid."
        case .attributeOperationErrorSizeOverflow:
            return """
            4: The attribute size exceeds the limit.
              - For user attribute operations: The user’s overall attribute size would exceed the limit of 16 KB, one of the user’s attributes would exceeds 8 KB in size, or the number of this user’s attributes would exceed 32 after this attribute operation.
              - For channel attribute operations: The channel’s overall attribute size would exceed the limit of 32 KB, one of the channel attributes would exceed 8 KB in size, or the number of this channel’s attributes would exceed 32 after this attribute operation.
            """
        case .attributeOperationErrorTooOften:
            return """
            5: The method call frequency exceeds the limit.
              - For `setLocalUserAttributes`, `addOrUpdateLocalUserAttributes`, `deleteLocalUserAttributesByKeys` and `clearLocalUserAttributes` taken together: the limit is 10 queries every five seconds.
              - For `getUserAttributes` and `getUserAttributesByKeys` taken together, the limit is 40 queries every five seconds.
              - For `setChannelAttributes`, `addOrUpdateChannelAttributes`, `deleteChannelAttributesByKeys` and `clearChannelAttributes` taken together: the limit is 10 queries every five seconds.
              - For `getChannelAllAttributes` and `getChannelAttributesByKeys` taken together, the limit is 10 queries every five seconds.
            """
        case .attributeOperationErrorUserNotFound:
            return "6: The specified user is not found, either because the user is offline or because the user does not exist."
        case .attributeOperationErrorTimeout:
            return "7: A timeout occurs in the attribute-related operation. The current timeout is set as five seconds. Possible reasons: The user is in the `AgoraRtmConnectionStateAborted` or `AgoraRtmConnectionStateReconnecting` state."
        case .attributeOperationErrorNotInitialized:
            return "101: The SDK is not initialized."
        case .attributeOperationErrorNotLoggedIn:
            return "102: The user does not call the loginByToken method, or the method call of loginByToken does not succeed before the attribute operation."
        @unknown default:
            return "\(self.rawValue): Unknown error"
        }
    }
}
// swiftlint:enable line_length
