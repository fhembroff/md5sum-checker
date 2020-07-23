import "https://raw.githubusercontent.com/dockstore-testing/md5sum-checker/workflowWithHTTPImports/md5sum/md5sum-tool.wdl" as md5sum

workflow ga4ghMd5 {
 File inputFile
 call md5sum.md5 { input: inputFile=inputFile }
}
