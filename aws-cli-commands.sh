# Create an S3 bucket for CloudTrail logs
aws s3api create-bucket --bucket my-cloudtrail-logs --region us-east-1

# Enable AWS CloudTrail logging
aws cloudtrail create-trail --name SecurityTrail --s3-bucket-name my-cloudtrail-logs
aws cloudtrail start-logging --name SecurityTrail

# Enable AWS GuardDuty
aws guardduty create-detector --enable
