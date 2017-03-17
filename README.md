# awsexport

Requires [pass](https://www.passwordstore.org/).

Outputs the secrets key to be exported. Export them by wrapping it:

`$(awsexport staging)`

Assumes access ID and keys are in the password store in the format of:

AWS_ACCESS_KEY_ID=<id>
AWS_SECRET_ACCESS_KEY<key>

Default path in the password store would be 'aws/my-account'. Change this by
setting `AWS_PASS_PATH=foo` in `.bashrc`/`.zshrc`.

It uses `grep` so that other data can be stored in the password store, and in
fact will export anything with `AWS` in the text.
