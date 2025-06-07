import Foundation

/// HTTP request used to log a user into the system.
struct LoginUserRequest: HTTPRequest {

    /// The concrete type returned when the request succeeds.
    typealias ResponsePayload = String

    // MARK: - Internal Properties

    /// Username for login.
    let username: String?

    /// Password for login.
    let password: String?

    /// Components describing the request URL.
    var urlComponents: URLComponents {

        var components = URLComponents()
        components.path = "/user/login"
        components.queryItems = []

        if let username {

            components.queryItems?.append(
                URLQueryItem(name: "username", value: username)
            )
        }

        if let password {

            components.queryItems?.append(
                URLQueryItem(name: "password", value: password)
            )
        }

        if components.queryItems?.isEmpty ?? true {

            components.queryItems = nil
        }

        return components
    }

}
