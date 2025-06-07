import Foundation

/// HTTP request used to retrieve a pet by its identifier.
struct GetPetByIdRequest: HTTPRequest {

    /// The concrete type returned when the request succeeds.
    typealias ResponsePayload = Pet

    // MARK: - Internal Properties

    /// Identifier for the desired pet.
    let petID: Int64

    /// Components describing the request URL.
    var urlComponents: URLComponents {

        var components = URLComponents()
        components.path = "/pet/\(petID)"

        return components
    }

}
