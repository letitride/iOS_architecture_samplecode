//
// Team.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



public struct Team: Codable {

    public var _id: Int?
    public var membersCount: Int?
    public var name: String?
    public var permission: String?
    public var reposCount: Int?
    public var url: String?

    public init(_id: Int?, membersCount: Int?, name: String?, permission: String?, reposCount: Int?, url: String?) {
        self._id = _id
        self.membersCount = membersCount
        self.name = name
        self.permission = permission
        self.reposCount = reposCount
        self.url = url
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case membersCount = "members_count"
        case name
        case permission
        case reposCount = "repos_count"
        case url
    }


}

