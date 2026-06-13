# Contributing to Copier Generic Template

First off, thanks for taking the time to contribute! ❤️

All types of contributions are encouraged and valued. See the [Table of
Contents](#table-of-contents) for different ways to help and details about how
this project handles them. Please make sure to read the relevant section before
making your contribution. It will make it a lot easier for us maintainers and
smooth out the experience for all involved.

The community looks forward to your contributions. 🎉

> And if you like the project, but just don't have time to contribute, that's
> fine. There are other easy ways to support the project and show your
> appreciation, which we would also be very happy about:
>
> - Star the project
> - Message about it on social networks
> - Refer this project in your project's README
> - Mention the project at local meetups and tell your friends/colleagues

## Table of Contents

- [Code Of Conduct](#code-of-conduct)
- [I Have A Question](#i-have-a-question)
- [I Want To Contribute](#i-want-to-contribute)
  - [Legal Notice](#legal-notice)
  - [Reporting Bugs](#reporting-bugs)
    - [Before Submitting A Bug Report](#before-submitting-a-bug-report)
    - [How Do I Submit A Good Bug Report?](#how-do-i-submit-a-good-bug-report)
  - [Suggesting Enhancements](#suggesting-enhancements)
    - [Before Submitting An Enhancement](#before-submitting-an-enhancement)
    - [How Do I Submit A Good Enhancement Suggestion?](#how-do-i-submit-a-good-enhancement-suggestion)
    - [Which Ide/Text Editor Should I Use ?](#which-idetext-editor-should-i-use-)
  - [Your First Code Contribution](#your-first-code-contribution)
    - [Create Your Own Fork](#create-your-own-fork)
    - [Setup Development Environment](#setup-development-environment)
  - [Improving The Documentation](#improving-the-documentation)
    - [No `Docs` Folder In The Repo](#no-docs-folder-in-the-repo)
    - [`Docs` Folder In The Repo](#docs-folder-in-the-repo)
- [Styleguides](#styleguides)
  - [Language Specific](#language-specific)
  - [Branches Names](#branches-names)
  - [Commit Messages](#commit-messages)
  - [Merge Requests / Pull Requests (Mr/Pr)](#merge-requests--pull-requests-mrpr)
- [Join The Project Team](#join-the-project-team)
- [Attribution](#attribution)

## Code of Conduct

This project and everyone participating in it is governed by the [Code of
Conduct][CODE_OF_CONDUCT]. By participating, you are expected to uphold this
code.

Please report unacceptable behavior to :

- [📧 abuse@romaindeville.fr](mailto:abuse@romaindeville.fr)

## I Have a Question

> If you want to ask a question, we assume that :
>
> - You have check [issues][issues_page]
> - You have do minimal research on the internet

If you did not find your answer or if you still feel the need to ask a question
and need clarification, we recommend the following:

- Open an [new issue][issues_page].
- Provide as much context as you can about what you're running into.
- Provide project and platform versions depending on what seems relevant.

We will then take care of the issue as soon as possible.

## I Want To Contribute

### Legal Notice

When contributing to this project, you must agree that you have authored 100% of
the content, that you have the necessary rights to the content and that the
content you contribute may be provided under the project licence.

> ⚠️ REMARK
>
> If this repo is either :
>
> - Under copyright (either personal or belong to an organization)
> - Not licensed or does not have an open-source or free license
>
> Please, do not send its code or any of its content (such as documentation)
> to an "Artificial Intelligence" provided by a private company through a SaaS
> (such as Copilot, etc) to help you to contribute.
>
> The aim of such notice is to avoid leaking private code to a company without
> copyright agreements or code usage agreements.
>
> While we are not currently unable to test whether you use such tools or not,
> this notice is solely based on trust.
>
> However, you are free to use an "AI" if you self-host such tools or are sure
> that there is (almost) absolutely no risks of content leakage.

### Reporting Bugs

#### Before Submitting a Bug Report

A good bug report shouldn't leave others needing to chase you up for more
information.
Therefore, we ask you to investigate carefully, collect information and describe
the issue in detail in your report.
Please complete the following steps in advance to help us fix any potential bug
as fast as possible.

- Make sure that you are using the latest version of the repo.
- Determine if your bug is really a bug and not an error on your side, e.g.
  using incompatible environment components/versions. If you are looking for
  support, you might want to check [this section](#i-have-a-question)).
- To see if other users have experienced (and potentially already solved) the
  same issue you are having, check if there is not already a bug report existing
  for your bug or error in the [issue page][issues_page].
- Also make sure to search the internet (including Stack Overflow) to see if
  users outside the community have already discussed the issue.
- Collect information about the bug:
  - Stack trace (Traceback)
  - OS, Platform and Version (Windows, Linux, macOS, x86, ARM)
  - Version of the interpreter, compiler, SDK, runtime environment, package
    manager, depending on what seems relevant.
  - Possibly your input and the output
- Can you reliably reproduce the issue? And can you also reproduce it with older
  versions?

#### How Do I Submit a Good Bug Report?

> 🚨 Security Concern
>
> You must never report security related issues, vulnerabilities or bugs
> including sensitive information to the issue tracker, or elsewhere in public.
> Instead sensitive issues must be sent by email to :
>
> - [📧 security@romaindeville.fr](mailto:security@romaindeville.fr)

We use issues to track bugs and errors.
If you run into an issue with the project:

- Open an [Issue][issues_page]. Since we can't be sure at this point whether
  it is a bug or not, we ask you not to talk about a bug yet and not to label
  the issue.
- Explain the behavior you would expect and the actual behavior.
- Please provide as much context as possible and describe the **reproduction
  steps** that someone else can follow to recreate the issue on their own.
  This usually may include part of your code.
  For good bug reports you should isolate the problem and create a reduced
  test case.
- Provide the information you collected in the previous section.

Once it's filed:

- The project team will label the issue accordingly.
- A team member will try to reproduce the issue with your provided steps.
  If there are no reproduction steps or no obvious way to reproduce the issue,
  the team will ask you for those steps and label the issue accordingly.
  Such issues will not be addressed until either **reproduction
  steps** are provided or until they are reproduced.
- If the team is able to reproduce the issue, label of the issue will be updated
  accordingly as well as possibly other tags, and the issue will be left to be
  [implemented by someone](#your-first-code-contribution).

### Suggesting Enhancements

This section guides you through submitting an enhancement suggestion for the
project, **including completely new features and minor improvements to
existing functionality**. Following these guidelines will help maintainers and
the community to understand your suggestion and find related suggestions.

#### Before Submitting an Enhancement

- Make sure that you are using the latest version.
- Read the documentation carefully and find out if the
  functionality is not already covered, maybe by an individual configuration.
- Perform a [search among issues][issues_page] to see if the enhancement has
  already been suggested.
  If it has, simply add 👍 reaction to the existing issue to notify us of your
  interest (**REMARK: Any comment containing only this emoji, or other reaction
  emoji will be deleted as they must be reaction on the initial post**) or
  comment the existing issue if you want to provide more information to
  complete the issue details.
- Find out whether your idea fits with the scope and aims of the project. It's
  up to you to make a strong case to convince the project's community of the
  merits of this feature. Keep in mind that we want features that will be useful
  to the majority of our users and not just a small subset. If you're just
  targeting a minority of users, consider writing an add-on/plugin library if
  the project provide such functionality.

#### How Do I Submit a Good Enhancement Suggestion?

Enhancement suggestions are tracked as [issues][issues_page].

- Use a **concise clear and descriptive title** for the issue to identify the
  suggestion.
- Provide a **step-by-step description of the suggested enhancement** with as
  many details as possible.
- **Describe the current behavior** and **explain which behavior you expected to
  see instead** and why. At this point you can also tell which alternatives do
  not work for you.
- You may want to **include screenshots or screen recordings** which help you
  demonstrate the steps or point out the part which the suggestion is related
  to. Please provide such media as lightweight as possible (through GIFs for
  instance).
- **Explain why this enhancement would be useful** to most users of the project.
  You may also want to point out the other projects that solved it better and
  which could serve as inspiration.

#### Which IDE/Text editor should I use ?

If you want to contribute, you can use any IDE or text editor you want (vim,
emacs, vscode, phpstorm, notepad, notepad++, etc).

Configuration Dotfiles (usually files starting with a dot, `.`, e.g.
`.editorconfig`, `.markdownlint.json`, etc) should be IDE agnostics.

The repo **WILL NEVER STORE IDE SPECIFIC FILES** such as `.vscode/`,
`.vimrc.local`, etc. Normally, this should be ensured with the `.gitignore`
file. Any contribution adding those files will automatically be refused if such
files are present. Contribution may still be accepted later once these file are
removed.

The aim of this rule is to let anyone use his/her prefer IDE/Text editor with
his/her preferred plugins.

The only optional constraint is that your IDE with its plugins should be able to
read provided dotfiles (such as `.editorconfig`, `.eslintrc`, `.yamllint`, etc)
to conform to the repository [Styleguides](#styleguides).

Nevertheless, if your IDE is not able to read configuration dotfiles, compliancy
against this configuration dotfiles will solely rely on you.

If you are not sure if you manage to be compliant with the configuration
dotfiles, the CI will ensure it, i.e. the CI will fail if your contribution does
not respect these configuration dotfiles.

### Your First Code Contribution

#### Create your own fork

Unless you are able to create branch on the main repository, to contribute, you
will need to create of fork of this repository. Then we strongly encourage you
to create a development branch (and if you want, following the [Branches Names
Styleguide](#branches-names)).
This will allow you to be able to fetch the default branch of the repository to
your own fork without messing with your future contribution.

Once done, you can work on your own fork/branch and add commit following [Commit
Messages Styleguides](#commit-messages).

Finally, once you think your work is ready to be merge, you can open a Merge
Request(MR)/Pull Request(PR) to the main repository. Your MR/PR must follow
[Merge Requests / Pull Requests Guidelines](#merge-requests--pull-requests-mrpr)

#### Setup development environment

In order to setup your development environment, please refers to the repository
documentation if such documentation exists or the [README][README] of the
repository. There, you should normally find instruction about installing
development environment and runnings tests normally.

If not, does not hesitate to open an [issue][issues_page] to ask maintainers
to provide some.

### Improving The Documentation

#### No `docs` folder in the repo

If no folder `docs` is present in the repo, the documentation relies only on
the README of the repo as well as some other files such as CODE_OF_CONDUCT or
CONTRIBUTING. To improve the documentation, you can directly update those files
via a Merge Request / Pull Request.

#### `docs` folder in the repo

If `docs` is present in the repo, then documentation improvement should mainly
be in this folder.

> If improvement concerns other files not in this folder, such as README,
> CODE_OF_CONDUCT or CONTRIBUTING, please refer to the [previous
> section](#no-docs-folder-in-the-repo).

Contribution to documentation within this folder should be done through a Merge
Request / Pull Request according to provided [Styleguides](#styleguides).

## Styleguides

### Language Specific

Basic language styleguides are provided by `.editorconfig` file.

Language specific styleguides are normally specify either in :

- STYLEGUIDE file at the root of the repo
- Styleguide section of the documentation if documentation exists

If not, check if there is some "dotfiles" (i.e. file usually starting with a
dot, `.`, e.g. `.editorconfig`) at the root of the repository for the language
used in the repository (e.g. `.eslintrc` for node, `.pylint` for python,
`.tf-lint` for hcl files, `.yamllint` for yaml files, `.markdownlint` for
markdown, etc) which will describe styleguides applied to the repository.

If any of the above does not exists, you can follow existing codes
styleguides by reading through the code and/or contribute to the repository to
propose a styleguide through an new issue or a new MR/PR.

### Branches Names

Some branches, tags or releases names are protected and can only be created by
either maintainers or bots. These are :

- Branches:
  - `main`, usually the default branch,
  - `release/*`, usually the branch use to track releases,
- Tags/Releases:
  - `v*`, creating when releasing repository
  - `*`, forbidden

In other case, you are free to use any branch naming you want as long as its
start with a semantic word, for instances :

- `feat/add-my-new-feat`
- `feat/improve-documentation`
- `fix/external-api-chagnes`
- `chore/fix-typo`
- `chore/bump-dep-versions`

**REMARK**: This only apply to people who are able to create branch on the main
repository. If you contribute through a fork, you are free to use any branch
naming you want on you own fork.

### Commit Messages

Commits should be **atomic**, **specific** and **linear**.
Do not hesitate to rework your git commit history.

This project follows [gitmoji specification](https://gitmoji.dev/specification)
for its commit message, i.e. (from gitmoji specifications):

> A gitmoji commit message consists is composed using the following pieces:
>
> - intention: The intention you want to express with the commit, using an
>   emoji from the list. Either in the :shortcode: or unicode format (**unicode
>   format is preferred**).
> - scope: An optional string that adds contextual information for the scope of
>   the change.
> - message: A brief explanation of the change.
> - body: A optional more detailed message about the change
>
> ```text
> <intention>[scope?][:?] <message>
>
> Commit Body
> ```
>
> Examples
>
> - ⚡️ Lazyload home screen images.
> - 🐛 Fix `onClick` event handler
> - 🔖 Bump version `1.2.0`
> - ♻️(components): Transform classes to hooks
> - 📈 Add analytics to the dashboard
> - 🌐 Support Japanese language
> - ♿️(account): Improve modals a11y

Prefer using **unicode** char as `<intention>` instead of shortcode.

Commit message format are enforced by a CI, if any your commit does not follow
this guideline, the CI will fail and your contribution will not be able to be
merged to the target ref.

**Why using Gitmoji ?**

Tags and releases versioning of the repos is done via parsing list of commits
since the last released. Depending on Gitmojis used on commits, tags and
releases will automatically be updated according to the semantic versioning
definition provided by the [gitmoji.json][gitmoji_json_semver] file provided by
the gitmoji repository.

[gitmoji_json_semver]: https://github.com/carloscuesta/gitmoji/blob/master/packages/gitmojis/src/gitmojis.json

### Merge Requests / Pull Requests (MR/PR)

Every contribution should be done via a Merge Request / Pull Request. It is
forbidden to commit directly to the default or releases branches, even for
maintainers (unless exceptional and urgent fix is needed).

The MR/PR should create a merge commit (unless specify by maintainers) and
should not squash commits (as the commits are needed for the tags/releases
automatic versioning).

CI will only run on MR/PR proposed to the repos either automatically or on
demand depending on the repo configuration.

Usually, MR/PR will not be merged if the following conditions are not met:

- CI Pipelines **MUST SUCCEED** (unless specified by maintainers)
- All discussions **MUST BE RESOLVED**
- MR/PR is **UP-TO-DATE** against the target ref (unless specify, for instance,
  if project reach critical number of contribution/contributor and this rules is
  not manageable anymore).
- Last commit should be **APROUVED** by a maintainer.

Moreover, MR/PR title must also follow [Commit Message](#commit-messages)
styleguide, since the MR/PR will generate a merge commit used to automatic
tags/releases versioning.

Finally, in the body of the MR/PR describe in details (if needed) what your
MR/PR add to the repository and if it resolves an existing issue, please mention
it in the description following closing pattern depending on the git server
provider. For more information see:

- [Gitlab: Issue closing pattern][gitlab_closing_pattern]
- [Github: Using keywords in issues and pull requests][github_closing_pattern]

Below is a example of MR/PR commit (title and body of the commit being
respectively the title and the body of the MR/PR):

```text
✨(scope): Add best feature of the world

This add the ability to manage X while not creating conflict with Y.

Fixes #<issue_number> #<another_issue_number>
```

[gitlab_closing_pattern]: https://docs.gitlab.com/ee/user/project/issues/managing_issues.html#default-closing-pattern
[github_closing_pattern]: https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/using-keywords-in-issues-and-pull-requests

## Join The Project Team

If you want to join the project team, please contact by email any of the
maintainers with the following email title :

```text
[] - Join The Project Team
```

The content of the email is left to you. For instance, you can provide :

- A list (exhaustive or not) of your contribution,
- Your motivation,
- The role that interest you (i.e. issues triage, MR/PR reviewer on all the
  code, only the documentation, maintainer, etc)

This will allow to start a discussion with you and the maintainers to decide if
you will be able to join the project team and specify which roles will be
most fitted to you.

## Attribution

This guide is adapted from the generator provided on the
[contributing.md](https://contributing.md/generator) that we gladly thanks ❤️!

[issues_page]: https://framagit.org/rdeville-public/opentofu/keycloak-identity-provider/-/issues
[README]: ./README.md
[CODE_OF_CONDUCT]: ./CODE_OF_CONDUCT.md

<!-- vim: ft=markdown -->
