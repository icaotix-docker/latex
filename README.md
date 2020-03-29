![Deploy](https://github.com/icaotix-docker/latex/workflows/Deploy/badge.svg)

# Schemes/Tags
## Sizes
* `infraonly`, `infraonly-scratch` - infrastructure-only scheme (no TeX at all)
* `minimal`, `minimal-scratch`, `minimal-incremental` - minimal scheme (plain only)
* `basic`, `basic-scratch`, `basic-incremental` - basic scheme (plain and latex)
* `small`, `small-scratch`, `small-incremental` - small scheme (basic + xetex, metapost, a few languages)
* `medium`, `medium-scratch`, `medium-incremental` - medium scheme (small + more packages and languages)
* `full`, `full-scratch`, `full-incremental`, `latest` - full scheme (everything)

## Extra Schemes
* `gust`, `gust-scratch`, `gust-incremental` - GUST TeX Live scheme
* `context`, `context-scratch`, `context-incremental` - ConTeXt scheme
* `tetex`, `tetex-scratch`, `tetex-incremental` - teTeX scheme (more than medium, but nowhere near full)

## Build Info `<tag>-incremental` (Image tree)
Images with this tag have all previous layers built in, use them for better caching.
```
infraonly (base image with ubuntu:18.04)
+---> minimal
+---> basic
+---> small
+---> context
+---> gust
+---> medium
+---> tetex
+---> full
```
NOTE: infraonly has no `incremental` tag.

## Build Info `<tag>-scratch`
These images are built from the base ubuntu:18.04 image. They only have one latex layer. They are usually a little bit smaller than their `incremental` counterparts. The `scratch` image is default when used with no tag extension. Also `latest` is built from scratch and is the same as `full` and `full-scratch`.

# How to use the image
Mount your source code at `/data` and run whatever you want with LaTeX.

# How to extend an Image
To extend the one of the docker-images with your packages.

`FROM icaotix/latex:<tag>`

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
