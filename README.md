# POC Jest + Postgres.js to implement database unittest

I wrote this POC to compare the [pgTAP database unit tests implementation](https://github.com/stephane-klein/postgresql-pgtap-graphile-migrate-skeleton) with an implementation based on [Jest](https://jestjs.io/) and [Postgres.js](https://github.com/porsager/postgres).

Context: https://github.com/stephane-klein/backlog/issues/302 (French)

## Getting started

```sh
$ asdf install
$ pnpm install
$ ./scripts/init.sh
```

```sh
$ pnpm run migrate:watch
```


```sh
$ pnpm run migrate-test:watch
```

Execute unittest:

```sh
$ pnpm run test
 PASS  tests/contacts.js
  ✓ Insert in contacts (2 ms)

Test Suites: 1 passed, 1 total
Tests:       1 passed, 1 total
Snapshots:   0 total
Time:        0.347 s, estimated 1 s
Ran all test suites.
```
