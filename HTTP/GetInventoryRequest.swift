import Foundation

/// HTTP request used to retrieve inventory counts by pet status.
struct GetInventoryRequest: HTTPRequest {

    /// The concrete type returned when the request succeeds.
    typealias ResponsePayload = [String: Int32]

    // MARK: - Internal Properties

    /// Components describing the request URL.
    var urlComponents: URLComponents {

        var components = URLComponents()
        components.path = "/store/inventory"

        return components
    }

}
