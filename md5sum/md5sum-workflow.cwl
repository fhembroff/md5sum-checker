cwlVersion: v1.0
class: Workflow

inputs:
  input_file: File

outputs:
  output_file:
    type: File
    outputSource: md5sum/output_file

steps:
  md5sum:
    run: https://raw.githubusercontent.com/dockstore-testing/md5sum-checker/workflowWithHTTPImport/md5sum/md5sum-tool.wdl
    in:
      input_file: input_file
    out: [output_file]
