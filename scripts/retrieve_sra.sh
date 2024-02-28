#!/bin/bash

# Path to the file containing sample IDs
sample_ids_file="/mnt/c/Users/Martin Njau/Downloads/accessions/biosamples/Eastafrica_biosamples.txt"

# Path to store the final SRA accessions file
output_file="/mnt/c/Users/Martin Njau/Downloads/accessions/sraaccessions/sraaccessions.txt"

# Function to fetch SRA IDs for a single BIOSAMPLE ID
fetch_sra_id() {
    local biosample_id="$1"
    epost -db biosample -id "$biosample_id" | elink -target sra | efetch -format docsum | xtract -pattern DocumentSummary -element Run@acc > temp_sra.txt
    cat temp_sra.txt >> "$output_file"
}

# Initialize the output file
> "$output_file"

# Read sample IDs from the file line by line
while IFS= read -r biosample_id; do
    # Fetch SRA ID for each BIOSAMPLE ID and append to the output file
    fetch_sra_id "$biosample_id"
done < "$sample_ids_file"

# Remove temporary file
rm temp_sra.txt

echo "SRA accessions extracted and saved to $output_file"

