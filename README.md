<<p align="center"> <img src="https://user-images.githubusercontent.com/50652676/62349836-882fef80-b51e-11e9-99e3-7b974309c7e3.png" width="100" height="100"></p>


<h1 align="center">
    Terraform AWS  SES
</h1>


<p align="center">

<a href="https://www.terraform.io">
  <img src="https://img.shields.io/badge/Terraform-v1.7.0-green" alt="Terraform">
</a>
<a href="https://github.com/slovink/terraform-aws-s3/blob/dev/LICENSE">
  <img src="https://img.shields.io/badge/License-APACHE-blue.svg" alt="Licence">
</a>



</p>
<p align="center">

<a href='https://www.facebook.com/Slovink.in=https://github.com/slovink/terraform-aws-s3'>
  <img title="Share on Facebook" src="https://user-images.githubusercontent.com/50652676/62817743-4f64cb80-bb59-11e9-90c7-b057252ded50.png" />
</a>
<a href='https://www.linkedin.com/company/101534993/admin/feed/posts/=https://github.com/slovink/terraform-aws-s3'>
  <img title="Share on LinkedIn" src="https://user-images.githubusercontent.com/50652676/62817742-4e339e80-bb59-11e9-87b9-a1f68cae1049.png" />
</a>



- [Introduction](#introduction)
- [Usage](#usage)
- [Module Inputs](#module-inputs)
- [Module Outputs](#module-outputs)
- [Examples](#examples)
- [License](#license)



## Prerequisites

This module has a few dependencies:

- [Terraform 1.x.x](https://learn.hashicorp.com/terraform/getting-started/install.html)
- [Go](https://golang.org/doc/install)



## Examples
For detailed examples on how to use this module, please refer to the [Examples](https://github.com/slovink/terraform-aws-s3/tree/dev/_example) directory within this repository.

## License
This Terraform module is provided under the '[License Name]' License. Please see the [LICENSE](https://github.com/slovink/terraform-aws-s3/blob/dev/LICENSE) file for more details.




### Simple Example
Here is an example of how you can use this module in your inventory structure:
  ```hcl
    module "s3-logs_bucket" {
      source = "https://github.com/slovink/terraform-aws-s3.git?ref=v1.0.0"
      versioning = true

      name        = "slovink-vpc-bucket"
      environment = "test"
      label_order = ["environment", "name"]

      acl = "private"
    }

  ```



## Feedback
If you come accross a bug or have any feedback, please log it in our [issue tracker](https://github.com/slovink/terraform-aws-s3/issues), or feel free to drop us an email at [contact@slovink.com](concate@slovink.com).

If you have found it worth your time, go ahead and give us a ★ on [our GitHub](https://github.com/slovink/terraform-aws-s3)!
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.4, < 1.7.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.13.1 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | >= 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.13.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_labels"></a> [labels](#module\_labels) | git::git@github.com:slovink/terraform-aws-labels.git | 1.0.0 |

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.s3_default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_accelerate_configuration.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_accelerate_configuration) | resource |
| [aws_s3_bucket_acl.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl) | resource |
| [aws_s3_bucket_cors_configuration.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_cors_configuration) | resource |
| [aws_s3_bucket_lifecycle_configuration.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_lifecycle_configuration) | resource |
| [aws_s3_bucket_logging.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_logging) | resource |
| [aws_s3_bucket_object_lock_configuration.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_object_lock_configuration) | resource |
| [aws_s3_bucket_ownership_controls.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_ownership_controls) | resource |
| [aws_s3_bucket_policy.s3_default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy) | resource |
| [aws_s3_bucket_public_access_block.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_bucket_replication_configuration.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_replication_configuration) | resource |
| [aws_s3_bucket_request_payment_configuration.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_request_payment_configuration) | resource |
| [aws_s3_bucket_server_side_encryption_configuration.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration) | resource |
| [aws_s3_bucket_versioning.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |
| [aws_s3_bucket_website_configuration.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_website_configuration) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acceleration_status"></a> [acceleration\_status](#input\_acceleration\_status) | Sets the accelerate configuration of an existing bucket. Can be Enabled or Suspended | `bool` | `false` | no |
| <a name="input_acl"></a> [acl](#input\_acl) | Canned ACL to apply to the S3 bucket. | `string` | `null` | no |
| <a name="input_acl_grants"></a> [acl\_grants](#input\_acl\_grants) | A list of policy grants for the bucket. Conflicts with `acl`. Set `acl` to `null` to use this. | <pre>list(object({<br>    id         = string<br>    type       = string<br>    permission = string<br>    uri        = string<br>  }))</pre> | `null` | no |
| <a name="input_attach_deny_insecure_transport_policy"></a> [attach\_deny\_insecure\_transport\_policy](#input\_attach\_deny\_insecure\_transport\_policy) | Controls if S3 bucket should have deny non-SSL transport policy attached | `bool` | `false` | no |
| <a name="input_attach_elb_log_delivery_policy"></a> [attach\_elb\_log\_delivery\_policy](#input\_attach\_elb\_log\_delivery\_policy) | Controls if S3 bucket should have ELB log delivery policy attached | `bool` | `false` | no |
| <a name="input_attach_lb_log_delivery_policy"></a> [attach\_lb\_log\_delivery\_policy](#input\_attach\_lb\_log\_delivery\_policy) | Controls if S3 bucket should have ALB/NLB log delivery policy attached | `bool` | `false` | no |
| <a name="input_attach_policy"></a> [attach\_policy](#input\_attach\_policy) | Controls if S3 bucket should have bucket policy attached (set to `true` to use value of `policy` as bucket policy) | `bool` | `false` | no |
| <a name="input_attach_public_policy"></a> [attach\_public\_policy](#input\_attach\_public\_policy) | Controls if a user defined public bucket policy will be attached (set to `false` to allow upstream to apply defaults to the bucket) | `bool` | `true` | no |
| <a name="input_attach_require_latest_tls_policy"></a> [attach\_require\_latest\_tls\_policy](#input\_attach\_require\_latest\_tls\_policy) | Controls if S3 bucket should require the latest version of TLS | `bool` | `false` | no |
| <a name="input_aws_iam_policy_document"></a> [aws\_iam\_policy\_document](#input\_aws\_iam\_policy\_document) | Specifies the number of days after object creation when the object expires. | `string` | `""` | no |
| <a name="input_block_public_acls"></a> [block\_public\_acls](#input\_block\_public\_acls) | Whether Amazon S3 should block public ACLs for this bucket. | `bool` | `false` | no |
| <a name="input_block_public_policy"></a> [block\_public\_policy](#input\_block\_public\_policy) | Whether Amazon S3 should block public bucket policies for this bucket. | `bool` | `false` | no |
| <a name="input_bucket_policy"></a> [bucket\_policy](#input\_bucket\_policy) | Conditionally create S3 bucket policy. | `bool` | `false` | no |
| <a name="input_control_object_ownership"></a> [control\_object\_ownership](#input\_control\_object\_ownership) | Whether to manage S3 Bucket Ownership Controls on this bucket. | `bool` | `false` | no |
| <a name="input_cors_rule"></a> [cors\_rule](#input\_cors\_rule) | CORS Configuration specification for this bucket | <pre>list(object({<br>    allowed_headers = list(string)<br>    allowed_methods = list(string)<br>    allowed_origins = list(string)<br>    expose_headers  = list(string)<br>    max_age_seconds = number<br>  }))</pre> | `null` | no |
| <a name="input_create_bucket"></a> [create\_bucket](#input\_create\_bucket) | Conditionally create S3 bucket. | `bool` | `true` | no |
| <a name="input_enable_kms"></a> [enable\_kms](#input\_enable\_kms) | Enable enable\_server\_side\_encryption | `bool` | `false` | no |
| <a name="input_enable_lifecycle_configuration_rules"></a> [enable\_lifecycle\_configuration\_rules](#input\_enable\_lifecycle\_configuration\_rules) | enable or disable lifecycle\_configuration\_rules | `bool` | `false` | no |
| <a name="input_enable_server_side_encryption"></a> [enable\_server\_side\_encryption](#input\_enable\_server\_side\_encryption) | Enable enable\_server\_side\_encryption | `bool` | `false` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment (e.g. `prod`, `dev`, `staging`). | `string` | `""` | no |
| <a name="input_force_destroy"></a> [force\_destroy](#input\_force\_destroy) | A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error. These objects are not recoverable. | `bool` | `false` | no |
| <a name="input_grants"></a> [grants](#input\_grants) | ACL Policy grant.conflict with acl.set acl null to use this | <pre>list(object({<br>    id          = string<br>    type        = string<br>    permissions = list(string)<br>    uri         = string<br>  }))</pre> | `null` | no |
| <a name="input_ignore_public_acls"></a> [ignore\_public\_acls](#input\_ignore\_public\_acls) | Whether Amazon S3 should ignore public ACLs for this bucket. | `bool` | `false` | no |
| <a name="input_kms_master_key_id"></a> [kms\_master\_key\_id](#input\_kms\_master\_key\_id) | The AWS KMS master key ID used for the SSE-KMS encryption. This can only be used when you set the value of sse\_algorithm as aws:kms. The default aws/s3 AWS KMS master key is used if this element is absent while the sse\_algorithm is aws:kms. | `string` | `""` | no |
| <a name="input_label_order"></a> [label\_order](#input\_label\_order) | Label order, e.g. `name`,`application`. | `list(any)` | `[]` | no |
| <a name="input_lifecycle_configuration_rules"></a> [lifecycle\_configuration\_rules](#input\_lifecycle\_configuration\_rules) | A list of lifecycle rules | <pre>list(object({<br>    id      = string<br>    prefix  = string<br>    enabled = bool<br>    tags    = map(string)<br><br>    enable_glacier_transition            = bool<br>    enable_deeparchive_transition        = bool<br>    enable_standard_ia_transition        = bool<br>    enable_current_object_expiration     = bool<br>    enable_noncurrent_version_expiration = bool<br><br>    abort_incomplete_multipart_upload_days         = number<br>    noncurrent_version_glacier_transition_days     = number<br>    noncurrent_version_deeparchive_transition_days = number<br>    noncurrent_version_expiration_days             = number<br><br>    standard_transition_days    = number<br>    glacier_transition_days     = number<br>    deeparchive_transition_days = number<br>    expiration_days             = number<br>  }))</pre> | `null` | no |
| <a name="input_logging"></a> [logging](#input\_logging) | Logging Object to enable and disable logging | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Name  (e.g. `app` or `cluster`). | `string` | `""` | no |
| <a name="input_object_lock_configuration"></a> [object\_lock\_configuration](#input\_object\_lock\_configuration) | With S3 Object Lock, you can store objects using a write-once-read-many (WORM) model. Object Lock can help prevent objects from being deleted or overwritten for a fixed amount of time or indefinitely. | <pre>object({<br>    mode  = string #Valid values are GOVERNANCE and COMPLIANCE.<br>    days  = number<br>    years = number<br>  })</pre> | `null` | no |
| <a name="input_object_ownership"></a> [object\_ownership](#input\_object\_ownership) | Object ownership. Valid values: BucketOwnerEnforced, BucketOwnerPreferred or ObjectWriter. 'BucketOwnerEnforced': ACLs are disabled, and the bucket owner automatically owns and has full control over every object in the bucket. 'BucketOwnerPreferred': Objects uploaded to the bucket change ownership to the bucket owner if the objects are uploaded with the bucket-owner-full-control canned ACL. 'ObjectWriter': The uploading account will own the object if the object is uploaded with the bucket-owner-full-control canned ACL. | `string` | `"ObjectWriter"` | no |
| <a name="input_owner_id"></a> [owner\_id](#input\_owner\_id) | The canonical user ID associated with the AWS account. | `string` | `""` | no |
| <a name="input_replication_configuration"></a> [replication\_configuration](#input\_replication\_configuration) | Map containing cross-region replication configuration. | `any` | `{}` | no |
| <a name="input_request_payer"></a> [request\_payer](#input\_request\_payer) | Specifies who should bear the cost of Amazon S3 data transfer. Can be either BucketOwner or Requester. By default, the owner of the S3 bucket would incur the costs of any data transfer | `bool` | `false` | no |
| <a name="input_restrict_public_buckets"></a> [restrict\_public\_buckets](#input\_restrict\_public\_buckets) | Whether Amazon S3 should restrict public bucket policies for this bucket. | `bool` | `false` | no |
| <a name="input_sse_algorithm"></a> [sse\_algorithm](#input\_sse\_algorithm) | The server-side encryption algorithm to use. Valid values are AES256 and aws:kms. | `string` | `"AES256"` | no |
| <a name="input_target_bucket"></a> [target\_bucket](#input\_target\_bucket) | The bucket where you want Amazon S3 to store server access logs. | `string` | `""` | no |
| <a name="input_target_prefix"></a> [target\_prefix](#input\_target\_prefix) | A prefix for all log object keys. | `string` | `""` | no |
| <a name="input_versioning"></a> [versioning](#input\_versioning) | Enable Versioning of S3. | `bool` | `true` | no |
| <a name="input_website_config_enable"></a> [website\_config\_enable](#input\_website\_config\_enable) | enable or disable aws\_s3\_bucket\_website\_configuration | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | The ARN of the s3 bucket. |
| <a name="output_bucket_domain_name"></a> [bucket\_domain\_name](#output\_bucket\_domain\_name) | The Domain of the s3 bucket. |
| <a name="output_id"></a> [id](#output\_id) | The ID of the s3 bucket. |
| <a name="output_tags"></a> [tags](#output\_tags) | A mapping of tags to assign to the resource. |
<!-- END_TF_DOCS -->