import JSON

struct FrameTable: JSONObjectDecodable {
    enum CodingKey: String {
        case `func` // Array of indices pointing to `funcTable`
    }

    let `func`: [Int]

    init(json: JSON.ObjectDecoder<CodingKey>) throws {
        // We use backticks because `func` is a reserved keyword in Swift
        self.`func` = try json[.func].decode()
    }
}
