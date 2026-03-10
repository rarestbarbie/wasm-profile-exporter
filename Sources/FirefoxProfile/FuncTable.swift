import JSON

struct FuncTable: JSONObjectDecodable {
    enum CodingKey: String {
        case name // Array of indices pointing to `stringArray`
    }

    let name: [Int]

    init(json: JSON.ObjectDecoder<CodingKey>) throws {
        self.name = try json[.name].decode()
    }
}
