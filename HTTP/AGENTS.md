These instructions apply to all Swift source files in this directory.

- Begin the stored properties section with a comment `// MARK: - Internal Properties`.
- Place a `// MARK: - Nested Types` comment immediately before any nested type declarations.
- Insert a blank line after every opening brace `{` and before every closing brace `}`.
- Separate each property or member with exactly one blank line.
- Provide DocC documentation (`///`) for every type, property, and nested type or case, summarizing its purpose.
- Omit DocC documentation comments on extension declarations.
- Run `swiftc -parse-as-library -c HTTP/*.swift` to verify the code compiles after any change.
