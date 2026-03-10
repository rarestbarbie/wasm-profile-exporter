import JSON

struct StackTable: JSONObjectDecodable {
    enum CodingKey: String {
        case frame  // Array of indices pointing to `frameTable`
        case prefix // Array of parent stack indices (nullable)
    }

    let frame: [Int]
    let prefix: [Int?]

    init(json: JSON.ObjectDecoder<CodingKey>) throws {
        self.frame = try json[.frame].decode()
        self.prefix = try json[.prefix].decode()
    }
}
