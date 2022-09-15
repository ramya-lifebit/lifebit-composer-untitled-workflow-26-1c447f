nextflow.enable.dsl=2

include { download_reads_1 } from './modules/download_reads_1/module.nf'
include { fastqc_1 } from './modules/fastqc_1/module.nf'
include { downsample_1 } from './modules/downsample_1/module.nf'

workflow {
input1 = Channel.fromPath(params.accessions).splitCsv()
input2 = Channel.fromPath(params.fastq)
input3 = Channel.fromPath(params.fastq)
download_reads_1(input1)
fastqc_1(input2)
downsample_1(input3)
}
