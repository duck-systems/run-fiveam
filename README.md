# run-fiveam

Easily run FiveAM test suites from GitHub Actions.

> [!WARNING]
> This action is currently experimental. It is tested and working with SBCL on Linux runners and _should_ work on others,
> but may or may not work with some implementations or operating systems.

## Getting Started

Add a job like the following:
```yaml
jobs:
  example:
    name: Example Tests
    runs-on: ubuntu-latest
    steps:
      # This action checks out our code in the working directory
      - uses: actions/checkout@v3

      # Run the tests
      - uses: duck-systems/run-fiveam@v0
        with:
          system: 'systems.duck.run-fiveam/test'
          tests: ':test-suite'
```

This action accepts the following parameters:
* `system`: the ASDF system to load with test definitions.
* `tests`: the suites and tests to run. Read as package-qualified symbols.
* `lisp`: the lisp to install and run. Accepts Roswell lisp names

## Notes

This action uses the following:
* [40ants/setup-lisp](https://github.com/40ants/setup-lisp)
* [neil-lindquist/CI-Utils](https://github.com/neil-lindquist/ci-utils)
* [Roswell](https://github.com/roswell/roswell)

If this action seems useful, give it a shot and write issues for what doesn't work well.
It isn't trying to support all usecases, only the basic need to run FiveAM tests.
