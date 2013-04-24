## Installation

You'll need Ruby installed and also Rake, which you can install with `gem install rake`.

Then just pull this repository down, and install the gem:

```
git clone git@github.com:alphagov/sbv-to-ttaf.git
cd sbv-to-ttaf
rake install
gem install pkg/sbv-to-ttaf-0.0.1.gem
```

## Usage

We needed a tool to convert Youtube's SBV captions format, which looked like:

```
0:00:09.510,0:00:15
learn about Agile and how it works. For me
in particular it’s meant going out into

0:00:15.219,0:00:21
departments where they have an idea of a product
they want, rewinding them a couple of steps
```

And turn it into XML that looks like:

```xml
<tt xmlns="http://www.w3.org/2006/10/ttaf1"> <body> <div xml:id="captions">

<p begin="0:00:09" end="0:00:15">learn about Agile and how it works. For me
in particular it’s meant going out into
</p>

<p begin="0:00:15" end="0:00:21">departments where they have an idea of a product
they want, rewinding them a couple of steps
</p>

</div></body></tt>
```

There wasn't a tool out there that we could find, after some searching, so we made one. It uses a horrible regex that gets the job done.

Use it like this:

```
sbvttaf yourfile.sbv
```

And you'll get `yourfile.xml` created. Pass in a second argument to name the output file:

```
sbvttaf yourfile.sbv test
```

Will produce `test.xml`.
