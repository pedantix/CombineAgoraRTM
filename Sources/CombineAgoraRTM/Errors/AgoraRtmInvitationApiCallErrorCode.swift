//
//  AgoraRtmInvitationApiCallErrorCode.swift
//  
//
//  Created by shaun on 12/21/21.
//

import AgoraRtmKit

extension AgoraRtmInvitationApiCallErrorCode: CustomStringConvertible {
    public var description: String {
        switch self {
        case .ok: return "0: The method call succeeds."
        case .invalidAugment: return "1: The method call fails. Invalid argument."
        case .notStarted: return "2: The method call fails. The call invitation has not started."
        case .alreadyEnd: return "3: The method call fails. The call invitation has ended."
        case .alreadyAccept: return "4: The method call fails. The call invitation is already accepted."
        case .alreadySent: return "5: The method call fails. The call invitation is already sent."
        @unknown default:
            return "\(self.rawValue): Unknown error"
        }
    }
}
