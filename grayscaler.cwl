#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
hints:
  DockerRequirement:
    dockerPull: jordancyverse/grayify
requirements:
  InitialWorkDirRequirement:
    listing:
      - $(inputs.srcImage)
inputs:
  srcImage:
    type: File
    inputBinding:
      position: 1
      valueFrom: $(self.basename)
outputs:
  grayImage:
    type: File
    outputBinding:
      glob: 'gray*.png'
