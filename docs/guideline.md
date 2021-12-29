# Project guideline
## Git
Before you start to work on any new feature or fix create a new branch first.

Then you can create a [Pull request](#Pull-requests) into `master` branch.

**Warning:** Doing changes directly on `master` branch is not recommended and should be avoided.  
**Tip:** Push every change into remote repository to avoid losing any changes. 

### Branch name
Branch name should look like:
```
(feature|fix)/<issue-id>-<short-issue-description>)
```  

**Example:** `feature/LRCZ-9-further-init-and-base-config`  
**Note:** If there is no related issue you can omit issue id like `fix/typos-in-readme`

### Commit scope
It is recommended to commit rather small amount of changes which are logically related and can be described as one thing.

It is easier to understand a pull request with commit messages like:
- `Add README.md`
- `Add poetry`
- `Add project guideline`

than:
- `Add some init files`
- `Update init files`

**Note:** Having simple and clean commits is also better for [rebasing](#Rebase).

### Commit message
First line of every commit message should be short and descriptive and any additional lines providing further description
are welcome:

```text
<short and descriptive message>
<optional - additional description>
```

We encourage you to use keywords like *add, fix, update, remove, improve, change* together with additional information
about *what, where, how, why*.

**Example:**
```text
Add pre-commit
With reorder-python-imports, black, pylint, typos and pre-commit-hooks-safety hooks
```
```text
Remove test_some_functionality test
It is not needed anymore - related functionality was removed a long time ago
```
**Tip:** Avoid very unclear or too short messages like `changes after CR`, `fix`, `update`, etc.  
**Note:** Such commit message `Fix flaky test_some_funcionality test` is more descriptive than simple `fix` or `fix test`.

### Rebase
Don't be afraid to use [git rebase](https://git-scm.com/docs/git-rebase). It is not that hard, and it can make your commits
clear and easy to understand. 

**Example:**  
Such commits:
- `Add README.md`
- `Add pre-commit`
- `Fix syntax error in pre-commit`
- `Fix typo in README.md`

can be rebased into:
- `Add README.md`
- `Add pre-commit`

### Pull requests
Every pull request (PR) should be reasonably long and complex. It is a good practice not to mix unrelated changes but if you
bump into small technical debt or some errors feel free to fix them as part of your PR.

#### Draft
Until your PR is ready for a review you should mark it as "draft" so it is not accidentally merged.

#### Title
PR title should look like:
```text
<issue-id>: <short-issue-description>)
```  

**Example:** 
```text
LRCZ-9: Further init and base config  
```
**Note:** If there is no related YouTrack issue please provide at least short PR description:
```text
<short-pr-description>)
```  

#### Description
If there are any important information which are not mentioned in a YouTrack issue please provide them in PR description.

**Example:**
```text
I switched library1 for library2 because library1 has a known [memory leak issue](link-to-more-info).
```

#### Template
There is a [PR template](/.github/pull_request_template.md) which should be always used for every new PR.

The template contains further instructions which should be followed and a PR checklist which should be always checked
before review (requestor part) and before merge (reviewer part).

#### Merge
Always merge new commits using rebase (["Rebase and merge"](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/incorporating-changes-from-a-pull-request/about-pull-request-merges#rebase-and-merge-your-pull-request-commits) option).

Always delete source branch.

**Tip:** If you need to pull `master` branch after merge pull with [rebase](#Rebase). 

## Code
Keep your code simple, readable and self-explanatory if possible.

Get inspired by [The Zen of Python](https://www.python.org/dev/peps/pep-0020/#the-zen-of-python).

### pre-commit
To ensure high code quality and format we use tools like [black](https://github.com/psf/black), [pylint](https://github.com/PyCQA/pylint)
and some others.
  
You should always run these tools over you code before commit. To do that just follow [initial setup](/README.md#Initial-setup)
instructions and set up [pre-commit](https://pre-commit.com/) then it will run automatically before every commit. 

### Documentation
It is recommended to document code reasonably.
  
It means you don't have to comment every peace of code but:
- use line comments to explain unexpected or unclear parts of code
- use [Google Style Docstring](https://sphinxcontrib-napoleon.readthedocs.io/en/latest/example_google.html) for methods and
  classes if the meaning is unclear or the code is too complex

**Tip:** If there is a more complex topic and docstring is not enough write more details into separated file in `docs` directory. 

### Tests
Every feature should be reasonably tested if possible.

### TODOs
TODO comments may be useful but should be used with care and not overused:

| Type                                                                                      | Merge allowed | Issue needed | Details                                                                                                                                                                        |
|-------------------------------------------------------------------------------------------|---------------|--------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **TODO which is part of unfinished work**                                                 | NO            | -            | Temporary TODO for WIP. Should be removed before merge.                                                                                                                        |
| **TODO with obvious no chance to be ever implemented**                                    | NO            | -            | This kind of TODO should be rather changed to *Warning* or simple comment or the code should be changed in a way to not require such TODO                                      |
| **TODO which is not required at the moment but there is a chance to be implemented once** | YES           | NO           | This kind of TODO does not require a YouTrack issue because it is not desired at the moment. But it might be required in a future with new requirements or changed conditions. |
| **Other TODOs**                                                                           | YES           | YES          | Any other TODO should be related to a YouTrack issue and issue should be mentioned right in the TODO.                                                                          |

## Versioning
Version should be increased with every pull request according to [Semantic versioning](https://semver.org/) rules.

## Maintenance
To maintain long-term good condition of the project do regularly update of:
- languages
- packages
- operating system
- documentation (incl. guideline and README)

check:
- logs
- metrics
- charts

and also revise code quality and safety every once in a while. 
