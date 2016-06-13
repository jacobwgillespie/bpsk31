# bpsk31 [![Build Status](https://travis-ci.org/jacobwgillespie/bpsk31.svg?branch=master)](https://travis-ci.org/jacobwgillespie/bpsk31)

Website about PSK31, the Amateur Radio digital operating mode.

**See the live website:** [https://bpsk31.com](https://bpsk31.com)

## Dependencies

* Ruby 2.3
* OS X / Linux

## Usage

**Setup**

```bash
$ bundle install
```

**Serve for development**

```bash
$ bundle exec middleman serve
$ # open http://localhost:4567
```

**Build for deployment**

```bash
$ bundle exec middleman build
```

**Deploy to GitHub Pages**

```bash
$ # This only runs on Travis CI and assumes the existence of the repository structure
$ ./scripts/deploy.sh
```

## Technical Details

The application is build using the [Middleman](https://middlemanapp.com) static site generator.  CSS is written in SCSS and utilizes modern CSS features like flexbox.  Vendor prefixes are automatically added, targeting IE 11 and greater (Edge).

The HTML markup adheres to the [Accelerated Mobile Pages](https://www.ampproject.org/) (AMP) standards, which impose several restrictions surrounding external resources, JavaScript, and CSS, but allow for the website to be rendered extremely quickly on mobile devices and even be served by Google's AMP CDN.

Middleman minifies CSS and HTML for deployment, as well as rewrites the asset names to include a hash of their contents.  This is useful for caching, described below.

The site itself is served by GitHub Pages as the origin server, with CloudFlare acting as the CDN and SSL terminator.  Through CloudFlare, it is served with HTTP2 for supporting browsers.  

Additionally, the non-HTML files are copied to [another GitHub repository](https://github.com/jacobwgillespie/bpsk31-cdn) with a modified `CNAME` file, creating `cdn.bpsk31.com`.  This CDN domain is also served with CloudFlare, but with a [page rule](https://support.cloudflare.com/hc/en-us/articles/200168306-Is-there-a-tutorial-for-Page-Rules-) that sets the cache TTL to one year in the future.  Combined with the asset hashes, this creates an effective long-term asset cache.

Commenting is powered by [Disqus](https://disqus.com/), utilizing their AMP comments widget in an `amp-iframe` element.

Travis CI is connected to the repository and runs builds as tests.  If the build passes on the master branch, `scripts/deploy.sh` is automatically executed to deploy the website to GitHub.
