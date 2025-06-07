import Foundation

/// Represents an order placed at the store.
///
/// This type maps the `Order` schema defined by the API and
/// includes details about the pet ordered, quantity and shipping
/// information. All properties match the OpenAPI specification.
struct Order: Decodable {

    // MARK: - Internal Properties

    /// Unique identifier for the order.
    let id: Int64

    /// Identifier of the pet being ordered.
    let petId: Int64?

    /// Quantity of items ordered.
    let quantity: Int32?

    /// Date at which the order ships.
    let shipDate: Date?

    /// Current status for the order.
    let status: Status?

    /// Indicates whether the order is complete.
    let complete: Bool?

    // MARK: - Nested Types

    /// Enumeration describing the possible order states.
    enum Status: String, Decodable {

        /// Order has been placed but not yet approved.
        case placed

        /// Order has been approved.
        case approved

        /// Order has been delivered.
        case delivered

    }

}
