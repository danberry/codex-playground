import Foundation

/// A type representing a request to the HTTP API.
///
/// Conforming types provide the components necessary to perform
/// an HTTP operation.
protocol HTTPRequest {

    // MARK: - Associated Types

    /// The concrete type describing the payload for this request.
    associatedtype Payload: Sendable

    /// The concrete type describing the payload returned by this request.
    associatedtype ResponsePayload: Sendable = Void

    /// The concrete type describing the payload returned when this request fails.
    associatedtype FailedResponsePayload: Sendable = Void

    // MARK: - Internal Properties

    /// The HTTP method to use with this request.
    var method: HTTPMethod { get }

    /// The URL components making up this request.
    var urlComponents: URLComponents { get }

    /// The data payload sent with this request.
    var requestPayload: Payload { get }

    /// Extra HTTP headers to include with this request.
    var additionalHeaders: [String: String] { get }

    /// The value of the Content-Type header for this request.
    var contentTypeHeader: String { get }

}

