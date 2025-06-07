import Foundation

/// HTTP request used to find pets by tags.
struct FindPetsByTagsRequest: HTTPRequest {

    /// The concrete type returned when the request succeeds.
    typealias ResponsePayload = [Pet]

    // MARK: - Internal Properties

    /// Tags used for filtering.
    let tags: [String]

    /// Components describing the request URL.
    var urlComponents: URLComponents {

        var components = URLComponents()
        components.path = "/pet/findByTags"

        if !tags.isEmpty {

            components.queryItems = [
                URLQueryItem(
                    name: "tags",
                    value: tags.joined(separator: ",")
                )
            ]
        }

        return components
    }

}
