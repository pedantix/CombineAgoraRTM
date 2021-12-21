//
//  AgoraRtmRemoteInvitationErrorCode.swift
//  
//
//  Created by shaun on 12/21/21.
//

import AgoraRtmKit

extension AgoraRtmRemoteInvitationErrorCode: CustomStringConvertible {
    public var description: String {
        switch self {
        case .ok:
            return "0: RETURNED TO THE CALLEE. The incoming call invitation succeeds."
        case .localOffline:
            return "1: RETURNED TO THE CALLEE. The call invitation received by the callee fails: the callee is" +
            " not online."
        case .acceptFailure:
            return "2: RETURNED TO THE CALLEE. The call invitation received by callee fails: the acceptance of" +
            " the call invitation fails."
        case .expire:
            return "3: RETURNED TO THE CALLEE. The call invitation received by the callee fails: the call invitation" +
            " expires 60 seconds since it is sent, if the callee ACKs to the call invitation but neither the caller" +
            " or callee takes any further action (cancel, accpet, or decline it)."
        @unknown default:
            return "\(self.rawValue): Unknown error"
        }
    }
}
