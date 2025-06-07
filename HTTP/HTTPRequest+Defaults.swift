import Foundation

extension HTTPRequest {

    /// The HTTP method to use with this request.
    var method: HTTPMethod { .get }

    /// The data payload sent with this request.
    var requestPayload: Void { () }

    /// Extra HTTP headers to include with this request.
    var additionalHeaders: [String: String] { [:] }

    /// The value of the Content-Type header for this request.
    var contentTypeHeader: String { "application/json; charset=utf-8" }

}
