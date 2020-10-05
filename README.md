# Project tree description
```
.
├── modules/
│   └── iam-user-group
└── regions/
    ├── eu-west-1/
    │   ├── dev
    │   ├── stg
    │   └── pro
    ├── us-east-1/
    │   ├── dev
    │   ├── stg
    │   └── pro
    └── global/
        ├── dev/
        │   ├── iam.tf
        │   ├── multi_region_global.tf
        │   ├── vars.tf
        │   └── terraform.tfvars
        ├── stg/
        │   ├── iam.tf -> ../dev/main.tf
        │   ├── multi_region_global.tf -> ../dev/multi_region_global.tf 
        │   ├── vars.tf -> ../dev/vars.tf
        │   └── terraform.tfvars
        └── pro/
            ├── iam.tf -> ../dev/main.tf
            ├── multi_region_global.tf -> ../dev/multi_region_global.tf 
            ├── vars.tf -> ../dev/vars.tf
            └── terraform.tfvars
```

# Regions
```
eu-west-1: most of the infrastructure of this exercice is deployed in this aws region.
dev, stg, pro: should have the same services (symbolic link from services directory)
global: resources used that affect to all infrastructure globally as route53 or iam
```