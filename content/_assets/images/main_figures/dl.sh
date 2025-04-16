#!/bin/bash

# List of URLs
urls=(
    "https://ark.digitalcommonwealth.org/ark:/50959/3f463c12t/large_image"
    "https://ark.digitalcommonwealth.org/ark:/50959/kk91nv539/large_image"
    "https://ark.digitalcommonwealth.org/ark:/50959/3f462v50z/large_image"
    "https://ark.digitalcommonwealth.org/ark:/50959/1r66j5942/large_image"
    "https://ark.digitalcommonwealth.org/ark:/50959/t722hs67h/large_image"
    "https://ark.digitalcommonwealth.org/ark:/50959/3f462x85g/large_image"
    "https://ark.digitalcommonwealth.org/ark:/50959/3f463061g/large_image"
    "https://ark.digitalcommonwealth.org/ark:/50959/0r96fk575/large_image"
    "https://ark.digitalcommonwealth.org/ark:/50959/1r66qm42v/large_image"
    "https://ark.digitalcommonwealth.org/ark:/50959/3f462t686/large_image"
    "https://ark.digitalcommonwealth.org/ark:/50959/2514p119f/large_image"
    "https://ark.digitalcommonwealth.org/ark:/50959/6t053p316/large_image"
    "https://ark.digitalcommonwealth.org/ark:/50959/3f462v68d/large_image"
    "https://ark.digitalcommonwealth.org/ark:/50959/8049g960n/large_image"
)

# Loop over each URL
for url in "${urls[@]}"
do
    # Extract the filename between /50959/ and /large_image
    filename=$(echo "$url" | sed -n 's#.*/50959/\([^/]*\)/large_image.*#\1#p')

    # Download the image and save with the extracted filename
    curl -L -o "${filename}.jpg" "${url}.jpg"
done
