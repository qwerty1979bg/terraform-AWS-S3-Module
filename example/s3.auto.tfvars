###########################################################################
# Terraform Config Vars:                                                  #
###########################################################################


###########################################################################
# Required S3 Bucket Module Vars:                                         #
#-------------------------------------------------------------------------#
# The following variables require consumer defined values to be provided. #
###########################################################################
bucket = "test-bucket-20200825"


###########################################################################
# Optional S3 Bucket Module Vars:                                         #
#-------------------------------------------------------------------------#
# The following variables have default values already set by the module.  #
# They will not need to be included in a project root module variables.tf #
# file unless a non-default value needs be assigned to the variable.      #
###########################################################################
region            = "us-east-1"
bucket_prefix     = []
bucket_suffix     = []
versioning        = false
mfa_delete        = false
encryption        = false
kms_master_key_id = "AES256"
acl               = "private"
logging_bucket    = null
static_hosting    = false
index_document    = "index.html"
error_document    = "error.html"
read_access       = []
write_access      = []
# custom_policy          = "null"
# disable_policy_autogen = false

cors_rule = {
  allowed_headers = ["*"]
  allowed_methods = ["PUT", "POST"]
  allowed_origins = ["*"]
  expose_headers  = []
  max_age_seconds = [3000]
}

tags = {
  Provisioned_By    = "Terraform"
  Module_GitHub_URL = "https://github.com/methodmi/terraform-AWS-S3-Module.git"
}
