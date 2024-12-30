import Testing
@testable import Path

struct PathTests {
    #if os(Windows)
        @Test func windows_path() throws {
            #expect(try AbsolutePath(validating: "C:\\Users\\Test").dirname == "C:\\Users")
        }
    #endif

    #if os(macOS) || os(Linux)
        @Test func unix_path() throws {
            #expect(try AbsolutePath(validating: "/usr/local/file.zip").dirname == "/usr/local")
            #expect(try AbsolutePath(validating: "/usr/local/file.zip").basename == "file.zip")
            #expect(try AbsolutePath(validating: "/usr/local/file.zip").extension == "zip")
            #expect(try AbsolutePath(validating: "/usr/local/file.zip").basenameWithoutExt == "file")
            #expect(try AbsolutePath(validating: "/usr/local/file.zip").parentDirectory.pathString == "/usr/local")
            #expect(try AbsolutePath(validating: "/usr/local/file.zip").isRoot == false)
            #expect(try AbsolutePath(validating: "/").isRoot == true)
            #expect(try AbsolutePath(validating: "/usr/local/file.zip").components == ["/", "usr", "local", "file.zip"])
            #expect(try AbsolutePath(validating: "/usr/local").appending(component: "bin").pathString == "/usr/local/bin")
            #expect(
                try AbsolutePath(validating: "/usr/local").appending(components: ["bin", "tuist"])
                    .pathString == "/usr/local/bin/tuist"
            )
            #expect(
                try AbsolutePath(validating: "/usr/local").appending(try RelativePath(validating: "bin/tuist"))
                    .pathString == "/usr/local/bin/tuist"
            )
        }
    #endif
}
