import Models

struct Deinit {
    let kind: String
    let comment: String
}

extension Deinit: SwiftDocModelType {
    static func make(from json: [String : Any]) throws -> Deinit {
        let builder = SlackModelBuilder.make(json: json)
        
        return Deinit(
            kind: try builder.value(defaultable: "kind"),
            comment: try builder.value(defaultable: "comment")
        )
    }
}