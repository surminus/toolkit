# aws-tools

## awsexport

Requires [pass](https://www.passwordstore.org/).

Outputs the secrets key to be exported. Export them by wrapping it:

`$(awsexport staging)`

Assumes access ID and keys are in the password store in the format of:

```
AWS_ACCESS_KEY_ID=<id>
AWS_SECRET_ACCESS_KEY<key>
```

Default path in the password store would be 'aws/my-account'. Change this by
setting `AWS_PASS_PATH=foo` in `.bashrc`/`.zshrc`.

It uses `grep` so that other data can be stored in the password store, and in
fact will export anything with `AWS` in the text.

## awsassume

A small wrapper to allow me to work with AWS assumed roles.

Assumes there is configuration set in `~/.aws/config`.

1. Export access keys for the main user role
2. Export the MFA_TOKEN environment variable
3. Running the script will echo the required env vars to set. Wrapping in
`$(awsassume)` will export them straight into your shell
