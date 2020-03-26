# Collection of recipes for common setups
To extend the Basic docker-image with your packages.
#### Install the full scheme
` RUN tlmgr install scheme-full `

#### Install latex packages
` RUN tlmgr install latexmk `
` RUN tlmgr install biber `

#### Minted + Pygments
` RUN tlmgr install minted `
```
RUN apt-get update \
    && apt-get install -qy python python-pip \
    && pip install pygments \
    && rm -rf /var/lib/apt/lists/*
```
