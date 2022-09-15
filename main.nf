nextflow.enable.dsl=2

include { gunzip_1 } from './modules/gunzip_1/module.nf'
include { gwas_vcf_regenie_1 } from './modules/gwas_vcf_regenie_1/module.nf'

workflow {
input1 = Channel.fromPath(params.any_file)
input2 = Channel.fromPath(params.ch_high_ld_regions)
input3 = Channel.fromPath(params.ch_gwas_cat)
input4 = Channel.fromPath(params.ch_ld_scores)
input5 = Channel.fromPath(params.ch_pheno)
gunzip_1(input1)
gwas_vcf_regenie_1(gunzip_1.out.output1, gunzip_1.out.output1, gunzip_1.out.output1, input2, input3, input4, input5)
gwas_vcf_regenie_1(gunzip_1.out.output1, gunzip_1.out.output1, gunzip_1.out.output1, input2, input3, input4, input5)
}
