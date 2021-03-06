# Ruby Extension for Theia
This extension adds Ruby language support to Theia.
It uses the [ruby language server](https://github.com/kwerle/ruby_language_server) to provide lanugage smartness.

It is similar to [theia-ruby-extension](https://github.com/theia-ide/theia-ruby-extension) which uses solargraph for the ruby smarts.  I started the ruby_language_server project before I had heard of that - and it has some slightly different features (more outlining, different context searching, some rspec & rakefile support...).

# Docker hub

If you are using this from docker hub and look at the ruby language server code:

```
docker run --rm -it -p 3000:3000 kwerle/theia_ruby_language_server
```

If you want to look at some of your own code:

```
docker run --rm -it -v YOUR_RUBY_PROJECT_SOURCE_DIR:/source -p 3000:3000 kwerle/theia_ruby_language_server
```

And then `open http://localhost:3000/`, check out /source, outline, and issues.

# GitHub

Check out the project.

The following will let you try it out with the ruby language server source.
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
