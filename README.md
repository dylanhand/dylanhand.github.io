Dylan Hand's website.

### Notes to self:

Once a change is made, the site can be deployed with `rake deploy`

In order to get tags to work it was necessary to, confusingly, split this repo into two branches that point to different code. The `sources` branch is at the root level and contains the source code. The `master` branch resides in the `_site` folder, which allows us to generate our site locally (and use whatever plugins we want), and push the generated files to be hosted by GitHub Pages.
