import Foundation

/// A tag assigned to a pet for searching or filtering.
///
/// Tags provide free-form labels that can be attached to pets. The
/// structure mirrors the API schema with an identifier and optional name.
struct Tag: Decodable {

    // MARK: - Internal Properties

    /// Unique identifier for the tag.
    let id: Int64

    /// Display name for the tag.
    let name: String?

}
