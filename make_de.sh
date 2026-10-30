#!/bin/sh
# Generates de/index.html (German start page at /de/) from index.html.
# Run after every change to index.html:  sh make_de.sh
cd "$(dirname "$0")"
mkdir -p de
sed -e 's#src="images/#src="../images/#g' \
    -e 's#href="images/#href="../images/#g' \
    -e 's#href="docs/#href="../docs/#g' \
    -e 's#<html lang="en">#<html lang="de">#' \
    -e 's#og:url" content="https://simbad001.github.io/mustapha_olunrebi/"#og:url" content="https://simbad001.github.io/mustapha_olunrebi/de/"#' \
    -e 's#data-lang="en" aria-pressed="true"#data-lang="en" aria-pressed="false"#' \
    -e 's#data-lang="de" aria-pressed="false"#data-lang="de" aria-pressed="true"#' \
    index.html > de/index.html
echo "de/index.html written"
