#### Tasks:

```
- AWS cofig files without the profile
```
provider "aws" {
  shared_config_files      = ["/Users/tf_user/.aws/conf"]
  shared_credentials_files = ["/Users/tf_user/.aws/creds"]
  profile                  = "customprofile"
}
```
- what happens when the ami and the instance is not defined
- installing git on local and configuring it
- clone the repo with "git clone" command
- define sg explicitly in the code and plan
- try do and aws "terraform init -upgrade"

- Try out the different version constraints of aws 
```