//
//  MockGitHubApiSession.swift
//  FluxWithRxSwiftTests
//
//  Created by 鈴木大貴 on 2018/08/15.
//  Copyright © 2018年 marty-suzuki. All rights reserved.
//

import GitHub
@testable import FluxWithRxSwift

final class MockGitHubApiSession: GitHubApiRequestable {
    struct NoResultError: Error {}

    var searchUsersResult: Result<([User], Pagination)>?
    var repositoriesResult: Result<([Repository], Pagination)>?

    func searchUsers(query: String, page: Int, completion: @escaping (Result<([User], Pagination)>) -> ()) {
        completion(searchUsersResult ?? .failure(NoResultError()))
    }

    func repositories(username: String, page: Int, completion: @escaping (Result<([Repository], Pagination)>) -> ()) {
        completion(repositoriesResult ?? .failure(NoResultError()))
    }
}
