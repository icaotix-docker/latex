# Schemes/Tags
## Sizes
* `infraonly` - infrastructure-only scheme (no TeX at all)
* `minimal` - minimal scheme (plain only)
* `basic` - basic scheme (plain and latex)
* `small` - small scheme (basic + xetex, metapost, a few languages)
* `medium` - medium scheme (small + more packages and languages)
* `full`, `latest` - full scheme (everything)

## Extra Schemes
* `gust` - GUST TeX Live scheme
* `context` - ConTeXt scheme
* `tetex` - teTeX scheme (more than medium, but nowhere near full)

## Build Info (Image tree)
```
       infraonly
           +
           |
           |
           v
        minimal
           +
           |
           |
           v
         basic
   +-------+------+
   |       |      |
   |       |      |
   v       v      v
context  small   gust
           +
           |
           |
           v
        medium
           +
           |
      +----+---+
      v        v
     full    tetex
```

# How to use
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
