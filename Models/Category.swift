import Foundation

/// A category for classifying pets.
///
/// Categories group pets within the store. This type is defined
/// by the API and includes an identifier and an optional name.
struct Category: Decodable {

    // MARK: - Internal Properties

    /// Unique identifier for the category.
    let id: Int64

    /// Name of the category, if provided.
    let name: String?

}
