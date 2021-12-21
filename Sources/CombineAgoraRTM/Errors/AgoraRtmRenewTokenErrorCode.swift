//
//  AgoraRtmRenewTokenErrorCode.swift
//  
//
//  Created by shaun on 12/20/21.
//

import AgoraRtmKit

extension AgoraRtmRenewTokenErrorCode: CustomStringConvertible {
    public var description: String {
        switch self {
        case .ok:
            return "0: The token-renewing operation succeeds."
        case .failure:
            return "1: Common unknown failure."
        case .invalidArgument:
            return "2: The method call fails. The argument is invalid."
        case .rejected:
            return "3: RESERVED FOR FUTURE USE"
        case .tooOften:
            return "4: The method call frequency of exceeds the limit of two queries per second."
        case .tokenExpired:
            return "5: The token has expired."
        case .invalidToken:
            return "6: The token is invalid."
        case .notInitialized:
            return "101: The SDK is not initialized."
        case .notLoggedIn:
            return "102: The user does not call the `loginByToken` method, or the method call of" +
            " `loginByToken` does not succeed before renewing the token."
        @unknown default:
            return "Unknown Error \(self.rawValue)"
        }
    }
}
