# Untitled Workflow #26

## Description



## Components

The present workflow is composed by the following unique components (Note that some components may be repeated):

### lifebitai_download_reads

**Description**: Downloads FastQ reads using SRA toolkit's fasterq-dump when provided with a list of accession numbers. For this component, reads are downloaded uncompressed.\
**Inputs**: 1\
**Outputs**: 1\
**Parameters**: 0

### lifebitai_fastqc

**Description**: Quality control assessment of FastQ files using FastQC.\
**Inputs**: 1\
**Outputs**: 1\
**Parameters**: 0

### lifebitai_downsample

**Description**: Downsamples FastQ samples.\
**Inputs**: 1\
**Outputs**: 1\
**Parameters**: 1

## Inputs

- `--accessions`: Accession file CSV file with a label in the first column and the accession number in the second column.
- `--fastq`: FastQ files, which can be compressed or uncompressed
## Parameters

### Required



### Optional

- `--downsample_1.ratio`: Provide the desired estimated coverage as a ratio (e.g.: 50X)
    - **Component**: downsample_1 
    - Type: number
    - Default: `10` 

