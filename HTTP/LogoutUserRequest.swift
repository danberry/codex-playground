import Foundation

/// HTTP request used to log out the current user.
struct LogoutUserRequest: HTTPRequest {

    // MARK: - Internal Properties

    /// Components describing the request URL.
    var urlComponents: URLComponents {

        var components = URLComponents()
        components.path = "/user/logout"

        return components
    }

}
