### Dependencies:

* pandoc
* s3cmd

### Build site:

```
$ make render
```

### Deploy site:

Assuming AWS keys are in ~/.s3personal

```
$ make upload
```