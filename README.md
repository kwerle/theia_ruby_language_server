# Ruby Extension for Theia
This extension adds Ruby language support to Theia.
It uses the [ruby language server](https://github.com/kwerle/ruby_language_server) to provide lanugage smartness.

# Get started

The following will let you check out the ruby language server source.
```
docker build --rm -t theia-ruby .
docker run --rm -it -p 3000:3000 theia-ruby
open  http://localhost:3000/
```

If you want to edit your own project, do:
```
docker build --rm -t theia-ruby .
docker run --rm -it -v YOUR_RUBY_PROJECT_SOURCE_DIR:/source -p 3000:3000 theia-ruby
open  http://localhost:3000/
```



Check out the /source directory.  Open the outline.
