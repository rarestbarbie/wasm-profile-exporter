import JSON

struct Samples: JSONObjectDecodable {
    enum CodingKey: String {
        case stack // Array of stack indices for each sample (nullable if idle)
        case time  // Array of timestamps
    }

    let stack: [Int?]
    let time: [Double]

    init(json: JSON.ObjectDecoder<CodingKey>) throws {
        self.stack = try json[.stack].decode()
        self.time = try json[.time].decode()
    }
}
