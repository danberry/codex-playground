import Foundation

/// Information about a user of the pet store.
///
/// This structure is a direct representation of the `User` schema
/// provided by the API. Many of the properties are optional as they
/// may not be supplied when creating or retrieving a user.
struct User: Decodable {

    // MARK: - Internal Properties

    /// Unique identifier for the user.
    let id: Int64

    /// Username used for login.
    let username: String?

    /// First name of the user.
    let firstName: String?

    /// Last name of the user.
    let lastName: String?

    /// Email address for the user.
    let email: String?

    /// Plain-text password.
    let password: String?

    /// Contact phone number.
    let phone: String?

    /// User status code provided by the system.
    let userStatus: Int32?

}
