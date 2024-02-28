#!/bin/bash

# Function to download data for a single SRA accession
download_sra_data() {
    local accession="$1"
    echo "Downloading SRA data for accession: $accession"
    prefetch "$accession"
    fastq-dump --outdir "$output_directory" --gzip "$accession"
    echo "Download of SRA data for accession $accession completed"
}

# Path to the file containing SRA accessions
accession_file="/mnt/c/Users/Martin Njau/Downloads/accessions/sraaccessions/sraaccessions.txt"

# Path to store the downloaded data
output_directory="/mnt/c/Users/Martin Njau/Downloads/accessions/sra_data"

# Create the output directory if it doesn't exist
mkdir -p "$output_directory"

# Loop through each SRA accession in the file
while IFS= read -r accession; do
    if [[ -n "$accession" ]]; then
        download_sra_data "$accession"
    fi
done < "$accession_file"

echo "All SRA data downloads completed!"

