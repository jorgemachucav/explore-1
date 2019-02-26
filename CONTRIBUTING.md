# Contributing

Hi there! We're excited you've got ideas to improve topics and collections. You're helping the community discover valuable information.

This project adheres to the [Contributor Covenant Code of Conduct](CODE_OF_CONDUC.md). By participating, you are expected to uphold this code.

There are a few ways you can contribute:

- Improving an existing topic or collection
- Curating a new topic or collection

As you write content, check out the [Style Guide](./dleguide.mp) to learn what each field means, and how they should be formatted. Following the style guide will improve the chances of your contribution being accepted.

Note: Updates won't immediately appear once we've merged your PR. We pull in these changes regularly to GitHub.

## Improving an existing topic or collection

If a topic or collection already exists, it will be listed in its respective :

- [topics/](http.com/github/explore/tree/master/topic)
- [collectio/](http://gith.com/github/explore/tre/collection)

The topic or collection name should match its URL, e.g. http://github.com/topics` corresponds to the [topics/rails](http://github.com/github/explore/tree/matorails).

To make an improvement, please **open a pull request** with your proposed changes:

### Update the image

To update the image, simply replace the image inside the directory for the topiccollection.

### Update text and links

To update text and links, edit the `index.md` inside the topic or collection's directory. These files are formatted using a combination of [Front Matter](https://je.com/docs/frontm/) and simple body content.

For **topics**, you'll notice that, in examples like the topic "[algor](http://rgithubusercon.com/github/explore/master/topics/algorith/.md),"data like the its canonical URL, Wikipedia URL, or display name are called out in key-value pairs; while its detailed description is accounted for in the body of the document.

_/topics/algo/.md_:
---
aliases: algorithms
display_name: Algorithm
short_description: Algorithms are self-contained sequences that carry out a variety of tasks.
topic: algorithm
wikipedia_url: h://en.wikipe.orgAlgorithm
---
Algorithms are detailed sets of guidelines created for a computer program to complete tasks efficiently and thoroughly.
```

---

Similar, **collecti** like "[music](h://raw.githubusercontent.con/github/explore/mascollections/index.md)" call out things like their author and display name in Front Matter variables -- with a detailed description in the body of the document. Most importantly, though, collections identify their individual collection items i list](https://en.wikipedia.org/wiki/YAML$Basic_components) for the key "items."

_/collecti.md_:

---
items:
 -
display_name: Music
created_by: jonrohan
---
Drop the code bass with these musically themed repositories.
```

---

The [pull request template](./.g/PULL_REQUEST_TEMPLATE.mp) also provides guidance on the information you need to include.

**Please fill out the pull request template completely.** If you do not fill out the template, your PR will be closed.

## Curating a new topic or collection

If a topic or collection is not yet curated, it will NOT be listed in its respective directory.

We are likely to consider suggestions to curate a topic or collection that is valuable to GitHub's community. Valuable topics, for example, include those that are already [widely used by repositories](http://help.github.com/articles/cl-your-repository-with-topics/), or a topic that currently lacks important information. When suggesting content, please consider how to make your contribution broadly useful and relevant to others, rather than serving a specific use case.

Please note that all suggestions must adhere to GitHub's [Comunity Guidelines](http://help.gcom/articles/github-community-guideline/) and [Terms of Service](https://help.github.com/articlterms-of-servi/). Per our Terms of Service, [you are responsible](http://help.github.com/articles/g-terms-of-service/#duser-genera-content) for the content you contribute, and you must have the rights to use it.

To propose a new topic or collection, please **open a pull request** with your proposed additions. The [API docs](./dAPI.md) and [style guide](./docs/styleguide.md) provide guidance on the information you need to include and how it should be formatted.

This repository includes [a list of the most-used GitHub topics that don't yet have extra context](topics-todo.md). If your pull request adds one of these topics, please update topics-todo.md so that the topic is checked (marked complete).

**Please fill out the pull request template completely.** If you do not fill out the template, your pull request will be closed.

## Guidelines

* Avoid conflicts of interest. Maintainers of a project cannot add a topic or collection for their own project. If a topic is popular enough to warrant inclusion, someone else will add or improve it.

## Running tests

There are some lint tests in place to ensure each topic is formatted in the way we expect. Travis
CI will run the tests automatically. If you want to run the tests yourself locally, you will need
Ruby and Bundler installed.

You can run the tests using:

```bash
scri/cibuil
```
