import Foundation

/// Describes a pet available in the store.
///
/// The `Pet` type mirrors the API specification and includes
/// identifiers, a name, and various optional properties describing
/// category, tags and current status.
struct Pet: Decodable {

    // MARK: - Internal Properties

    /// Unique identifier for the pet.
    let id: Int64

    /// Name of the pet.
    let name: String

    /// Category this pet belongs to.
    let category: Category?

    /// Photos associated with the pet.
    let photoUrls: [String]

    /// Tags assigned to the pet.
    let tags: [Tag]?

    /// The pet's availability status.
    let status: Status?

    // MARK: - Nested Types

    /// Possible values describing the pet's availability.
    enum Status: String, Decodable {

        /// Pet is available for adoption.
        case available

        /// Pet is pending adoption.
        case pending

        /// Pet has been sold or adopted.
        case sold

    }

}
