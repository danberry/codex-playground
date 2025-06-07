import Foundation

/// HTTP methods that can be issued to the API.
///
/// Each case maps to a standard HTTP verb.
enum HTTPMethod: String {

    /// Retrieve data without modifying server state.
    case get

    /// Create a new resource.
    case post

    /// Replace an existing resource.
    case put

    /// Partially update an existing resource.
    case patch

    /// Delete a resource.
    case delete

    /// Return response headers only, without a body.
    case head

    /// Describe the communication options for the target resource.
    case options

    /// Echo the received request for diagnostic purposes.
    case trace

}
