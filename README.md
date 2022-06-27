# dafni-aws-cli

DAFNI model for interacting with Amazon Web Services. This is a wrapper around
the
[AWS command line interface](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html).

```bash
# Build the image
docker build -t nismod/dafni-aws-cli:latest .

# Run image using test data
docker run -it \
    -v "$PWD":/data/outputs \
    -e COMMAND="s3 ls s3://bucket-name" \
    -e AWS_ACCESS_KEY_ID="access-key-id" \
    -e AWS_SECRET_ACCESS_KEY="secret-access-key" \
    nismod/dafni-aws-cli

# Export to file for upload
docker save nismod/dafni-aws-cli | gzip > dafni-aws-cli.tar.gz
```
