import Foundation

/// HTTP request used to find pets by status.
struct FindPetsByStatusRequest: HTTPRequest {

    /// The concrete type returned when the request succeeds.
    typealias ResponsePayload = [Pet]

    // MARK: - Internal Properties

    /// Status values used for filtering.
    let statuses: [Pet.Status]

    /// Components describing the request URL.
    var urlComponents: URLComponents {

        var components = URLComponents()
        components.path = "/pet/findByStatus"

        if !statuses.isEmpty {

            components.queryItems = [
                URLQueryItem(
                    name: "status",
                    value: statuses.map(\.rawValue).joined(separator: ",")
                )
            ]
        }

        return components
    }

}
