This script collect AMI id from AWS using product code

```
aws --region us-west-2 ec2 describe-images --owners aws-marketplace --filters Name=product-code,Values=aw0evgkw8e5c1q413zgy5pjce
```

Where 

`Values=aw0evgkw8e5c1q413zgy5pjce` - product code for Centos 7 from https://wiki.centos.org/Cloud/AWS

`search_string` - version of Centos7 image (1804_02)