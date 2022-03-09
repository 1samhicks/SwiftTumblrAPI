//
// Created by Sam Hicks on 3/8/22.
//

import Foundation

struct APIError: CustomStringConvertible, CustomDebugStringConvertible {

    let authToken: String?
    let minimumRequiredAge: Int?
    let needsAge: Bool?
    let isConsentBlocking: Bool?
    let consentProvider: String?
    let needsConsent: Bool?
    let code: Int?
    let detail: String
    let title: String
    let logout: Bool?

    init(authToken: String?, minimumRequiredAge: Int?, needsAge: Bool?, isConsentBlocking: Bool?,
         consentProvider: String?, needsConsent: Bool?, code: Int?, detail: String, title: String,
         logout: Bool?) {
        self.authToken = authToken
        self.minimumRequiredAge = minimumRequiredAge
        self.needsAge = needsAge
        self.isConsentBlocking = isConsentBlocking
        self.consentProvider = consentProvider
        self.needsConsent = needsConsent
        self.code = code
        self.detail = detail
        self.title = title
        self.logout = logout
    }

    var description: String {
        "APIError(authToken: \(authToken ?? "nil"), minimumRequiredAge: \n\(minimumRequiredAge), needsAge: \(needsAge), isConsentBlocking: \n\(isConsentBlocking), consentProvider: \(consentProvider), needsConsent: \n\(needsConsent), code: \(code), detail: \(detail), title: \(title), logout: \(logout))"
    }
    var debugDescription: String {
        """
        APIError(authToken: \(authToken), minimumRequiredAge: \(minimumRequiredAge), needsAge: \(needsAge), isConsentBlocking: \(isConsentBlocking), consentProvider: \(consentProvider), needsConsent: \(needsConsent), code: \(code), detail: \(detail), title: \(title), logout: \(logout))
        """
    }
}
