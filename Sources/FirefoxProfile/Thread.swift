import JSON

public struct Thread: JSONObjectDecodable {
    public enum CodingKey: String, Sendable {
        case name
        case stringArray
        case funcTable
        case frameTable
        case stackTable
        case samples
    }

    let name: String
    let stringArray: [String]?

    let funcTable: FuncTable?
    let frameTable: FrameTable?
    let stackTable: StackTable?
    let samples: Samples

    public init(json: JSON.ObjectDecoder<CodingKey>) throws {
        self.name = try json[.name].decode()
        self.stringArray = try json[.stringArray]?.decode() ?? []
        self.funcTable = try json[.funcTable]?.decode()
        self.frameTable = try json[.frameTable]?.decode()
        self.stackTable = try json[.stackTable]?.decode()
        self.samples = try json[.samples].decode()
    }
}
