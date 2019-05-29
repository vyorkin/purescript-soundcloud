# purescript-soundcloud

[![CircleCI](https://circleci.com/gh/vyorkin/purescript-soundcloud/tree/master.svg?style=shield)](https://circleci.com/gh/vyorkin/purescript-soundcloud/tree/master)
[![Maintainer: vyorkin](https://img.shields.io/badge/maintainer-vyorkin-lightgrey.svg)](http://github.com/vyorkin)

PureScript bindings for the [Official SoundCloud Javascript SDK](https://github.com/soundcloud/soundcloud-javascript).

## Warning

It doesn't really work and I don't know how to fix the authentication issue.
Also, this: https://github.com/soundcloud/soundcloud-javascript/pull/47

# Installation

## Prerequisites

This guide assumes you already have Node.js, psc-package or Bower installed
with `npm` and `bower` somewhere on your path.

## Using [psc-package](https://github.com/purescript/psc-package):

```sh
psc-package install soundcloud
```

## Using [bower](https://bower.io/):

```sh
bower i --save purescript-soundcloud
```

# Contributing

Clone the repo, step into it and install the dependencies:

```sh
$ npm i
```

Bower dependencies will be installed automatically.

## Building

The project can now be built with:

```sh
$ npm run build
```

or just:

```sh
$ make
```

## Releasing

Update version in `bower.json` and then run:

```sh
make release v=x.x.x
```

For more info read the [pulp docs](https://github.com/purescript-contrib/pulp#releasing-packages).
