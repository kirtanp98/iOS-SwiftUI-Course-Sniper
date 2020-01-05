import Foundation

struct Course: Codable {
    let courseNumber, subject: String
    let openSections: Int
    let synopsisUrl: String
    let offeringUnitCode: String
    let title: String
    let preReqNotes: String?
    let sections: [Section]
    let credits: Int?
    let coreCodes: [CoreCode]
    let courseNotes, expandedTitle: String?
}


// MARK: - CoreCode
struct CoreCode: Codable {
    let id, subject, year, description: String
    let term, code, offeringUnitCode, coreCode: String
    let coreCodeDescription: String
    let lastUpdated: Int
    let effective, coreCodeReferenceId, unit, course: String

}

// MARK: - Section
struct Section: Codable {
    let sectionEligibility: String?
    let specialPermissionAddCode: String?
    let crossListedSections: [CrossListedSection]
    let sectionNotes: String?
    let instructors: [Instructor]
    let number: String
    let openStatus: Bool
    let comments: [Comment]
    let index: String
    let subtitle: String?
    let meetingTimes: [[String: String?]]
}

// MARK: - Comment
struct Comment: Codable {
    let code, commentDescription: String

    enum CodingKeys: String, CodingKey {
        case code
        case commentDescription = "description"
    }
}

// MARK: - CrossListedSection
struct CrossListedSection: Codable {
    let courseNumber: String
    let sectionNumber: String
    let primaryRegistrationIndex, offeringUnitCode, registrationIndex, subjectCode: String
}


// MARK: - Instructor
struct Instructor: Codable {
    let name: String
}

