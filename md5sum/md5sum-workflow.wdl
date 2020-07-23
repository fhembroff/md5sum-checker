import "md5sum-tool.wdl" as md5sum

workflow ga4ghMd5 {
 File inputFile
 call md5sum.md5 { input: inputFile=inputFile }
}
