import JSON

public struct FirefoxProfile: JSONObjectDecodable {
    @frozen public enum CodingKey: String, Sendable {
        case threads
    }

    public let threads: [Thread]

    public init(json: JSON.ObjectDecoder<CodingKey>) throws {
        self.threads = try json[.threads].decode()
    }
}
