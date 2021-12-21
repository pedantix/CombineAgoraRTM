//
//  AgoraRtmLocalInvitationErrorCode.swift
//  
//
//  Created by shaun on 12/21/21.
//

import AgoraRtmKit

// swiftlint:disable line_length
extension AgoraRtmLocalInvitationErrorCode: CustomStringConvertible {
    public var description: String {
        switch self {
        case .ok:
            return "0: RETURNED TO THE CALLER. The outgoing call invitation succeeds."
        case .remoteOffline:
            return """
            1: RETURNED TO THE CALLER. The callee is offline.
            The SDK:
             - Keeps resending the call invitation to the callee, if he or she is offline.
             - Returns this error code, if he or she is still offline 30 seconds since the call invitation is sent.
            """
        case .remoteNoResponse:
            return "2: RETURNED TO THE CALLER. The callee is online but has not ACKed to the call invitation 30 seconds since it is sent."
        case .expire:
            return "3: RETURNED TO THE CALLER. SAVED FOR FUTURE USE. The call invitation expires 60 seconds since it is sent, if the callee ACKs to the call invitation but neither the caller or callee takes any further action (cancel, accpet, or decline it)."
        case .notLoggedIn:
            return "4: RETURNED TO THE CALLER. The caller is not logged in."
        @unknown default:
            return "\(self.rawValue): Unknown error"
        }
    }
}
// swiftlint:enable line_length
