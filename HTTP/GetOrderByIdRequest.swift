import Foundation

/// HTTP request used to retrieve a store order by its identifier.
struct GetOrderByIdRequest: HTTPRequest {

    /// The concrete type returned when the request succeeds.
    typealias ResponsePayload = Order

    // MARK: - Internal Properties

    /// Identifier of the desired order.
    let orderID: Int64

    /// Components describing the request URL.
    var urlComponents: URLComponents {

        var components = URLComponents()
        components.path = "/store/order/\(orderID)"

        return components
    }

}
