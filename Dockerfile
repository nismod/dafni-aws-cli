FROM amazon/aws-cli:2.0.6
# override the parent entrypoint so that we can pass a single string
# COMMAND from environment variable to the aws executable.
ENTRYPOINT []
CMD ["sh", "-c", "/usr/local/bin/aws ${COMMAND}"]
