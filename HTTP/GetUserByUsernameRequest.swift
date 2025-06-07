import Foundation

/// HTTP request used to retrieve a user by name.
struct GetUserByUsernameRequest: HTTPRequest {

    /// The concrete type returned when the request succeeds.
    typealias ResponsePayload = User

    // MARK: - Internal Properties

    /// Username of the desired user.
    let username: String

    /// Components describing the request URL.
    var urlComponents: URLComponents {

        var components = URLComponents()
        components.path = "/user/\(username)"

        return components
    }

}
