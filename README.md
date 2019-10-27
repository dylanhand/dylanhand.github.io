Dylan Hand's website.

### README:

Once a change is made, the site can be deployed with `rake deploy`.

In order to get tags to work it was necessary to, confusingly, split this repo into two branches that point to different code. The `sources` branch is at the root level and contains the source code. The `master` branch resides in the `_site` folder, which allows local generation of the site (using any necessary plugins), and push the generated files to be hosted by GitHub Pages.
