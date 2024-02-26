**IN SILICO ANALYSIS OF VIRULENCE AND ANTIMICROBIAL RESISTANCE ASSOCIATED GENES IN GENOMES OF NONTYPHOIDAL SALMONELLA ISOLATES FROM KENYA**

**Background**

Non-typhoidal Salmonella causes 93.8 million cases worldwide each year, resulting in 155,000 deaths whereby foodborne transmission is responsible for 85% of these cases. Annually, there are around 3.4 million invasive infections, leading to 681,000 deaths, primarily impacting the young and elderly populations in Africa. In Kenya, Salmonella typhimurium and Salmonella enteritidis are prevalent, with incidence rates ranging from 166 to 625 cases per 100,000 individuals each year and mortality rates are high (20–25%) unless immediate treatment is provided. The economic impact is substantial, with the poultry industry alone experiencing losses exceeding US$456 million annually. Each case of antimicrobial-resistant non-typhoidal Salmonella (NTS) infection carries an estimated economic burden of USD 10 million due to premature death, contributing to an overall societal burden of USD 50 billion each year.

To identify antimicrobial resistance genes and virulence-associated genetic elements in NTS, we propose to conduct an in silico analysis of NTS genomes from Kenya. This analysis will provide insights into the transmission dynamics between animals, humans, and the environment(One Health).

**Objectives**
The broad objective of this study is to conduct a detailed analysis of publicly available NTS genomes from Kenya to identify AMR and virulence associated genetic elements

*Specific objectives*
1. To retrieve FASTQ files for NTS isolates from Kenya and conduct quality control assessment.
2. To assemble high-quality sequencing reads into contigs or scaffolds and annotate the genomes.
3. To perform pan genome analysis and conduct phylogenetic analysis.
4. To detect antimicrobial resistance genes within NTS genomes and predict virulence genes.

**Methods**

**Data Collection**

NTS data collection will involve retrieving FASTQ files for NTS isolates from Kenya from Gen bank,SRA and Refseq databases with the aid of NCBI Pathogen Isolate Browser tool. Filtering shall be used to get the desired data. First, the "Organism group" filter will be used to select only isolates of "Salmonella enterica". Then, the "Location" selection will be used to choose only Salmonella enterica isolates found in "Kenya". Finally, the "Serovar" section will select all salmonella serovars with the exception of Salmonella's typhi and paratyphi to maintain only Non-Typhoidal Salmonella. A script will be developed to automate the download process, utilizing accession numbers obtained from the NCBI pathogen isolate browser.

**Data Analysis**

**Quality Control**
 We will perform a quality control assessment on the raw sequencing reads to filter out low-quality reads, adapters, and contaminants. We will use the tool fastp.

**Assembly**
 We will then assemble the high-quality sequencing reads into contigs or scaffolds using SPAdes genome assembler.

**Annotation**
 Following this, we will conduct genome annotation using Prokka annotation pipeline to predict coding sequences, non-coding RNAs, and other genomic features.

**Pan genomic analysis**
 This analysis will allow us to identify core genes shared among all strains and accessory genes unique to specific strains. This analysis shall be performed using Roary software and MALT for multi sequence alignment. The core genome alignment produced from this analysis shall be used to generate phylogenetic trees

**Phylogenetic analysis**
We will construct phylogenetic trees utilizing FastTree 2 tool to infer the evolutionary relationships among the NTS isolates based on core genome from the pan genome analysis.

**Identification of AMR and Virulence genes**
We will use the Staramr tool to identify antimicrobial resistance genes within NTS genomes. Abricate tool shall be used in identifying virulence factors associated with the NTS genomes against the Virulence Factors Database.

**WORKFLOW**
![image](https://github.com/GMlevel/NTS-in-silico-analysis/assets/120181260/8084f42a-efdb-4710-8061-5b71943a740b)

# NTS-in-silico-analysis
Repo for secondary analysis of Non Typhi Salmonella genomes from Kenya
