# Resource Configuration
#
# https://www.terraform.io/docs/configuration/resources.html

# https://www.terraform.io/docs/providers/aws/r/s3_bucket.html
resource "aws_s3_bucket" "default" {
  bucket = "${var.name}"

  # S3 access control lists (ACLs) enable you to manage access to buckets and objects.
  # https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html
  #
  # Server access logging provides detailed records for the requests that are made to a bucket.
  # S3 uses a special log delivery account, called the Log Delivery group, to write access logs.
  # Server access log records are delivered on a best effort basis.
  # https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerLogs.html
  acl = "log-delivery-write"

  # Versioning is a means of keeping multiple variants of an object in the same bucket.
  # Versioning-enabled buckets enable you to recover objects from accidental deletion or overwrite.
  #
  # Once you version-enable a bucket, it can never return to an unversioned state.
  # You can, however, suspend versioning on that bucket.
  # https://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html
  versioning {
    enabled = "${var.versioning_enabled}"
  }
}
