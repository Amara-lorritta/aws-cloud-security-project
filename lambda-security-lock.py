import boto3

def lambda_handler(event, context):
    iam = boto3.client('iam')
    user = event['detail']['resource']['user']
    
    try:
        # Disable the IAM user's login profile
        iam.update_login_profile(UserName=user, PasswordResetRequired=True)
        print(f"IAM User {user} has been locked due to security concerns.")
    except Exception as e:
        print(f"Error: {e}")
