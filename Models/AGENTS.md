These instructions apply to all Swift source files in this directory.

- Each model must conform to `Decodable`.
- Use non-optional properties for all required fields defined by the API (for example `id`). Optional fields may remain optional.
- Begin the stored properties section with a comment `// MARK: - Internal Properties`.
- Place a `// MARK: - Nested Types` comment immediately before any nested type declarations.
- Insert a blank line after every opening brace `{` and before every closing brace `}`.
- Separate each property or member with exactly one blank line.
- Provide DocC documentation (`///`) for every type, property, and nested type or case, summarizing its purpose.
- Run `swiftc -parse-as-library -c Models/Order.swift Models/Category.swift Models/User.swift Models/Tag.swift Models/Pet.swift` to verify the code compiles after any change.
