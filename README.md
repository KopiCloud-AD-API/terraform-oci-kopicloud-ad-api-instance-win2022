# Deploy an Oracle Cloud (OCI) Virtual Machine with KopiCloud AD API in Windows Server 2022
[![Terraform](https://img.shields.io/badge/terraform-v1.3+-blue.svg)](https://www.terraform.io/downloads.html)
[![KopiCloud-AD](https://img.shields.io/badge/kopiCloud_ad-v1.0+-blueviolet.svg)](https://www.kopicloud-ad-api.com)

The Terraform code in this repo will deploy an Oracle Cloud (OCI) Virtual Machine for the **KopiCloud AD API** with Windows Server 2022 and SQL Server 2022 Express.

## Network Configuration

The code will create the network resources (VCN, Subnet, Internet Gateway, Routes).

## Notes

- By default, the download and installation of **SQL Server Management Studio** is disabled because it will take lots of time.

- The default Windows username is **opc**, and you can get the password from the Terraform output.

```
api_admin_password = "B21AqTpHlai[5"
api_admin_user = "opc"
api_public_ip = "xxx.xxx.xxx.xxx"
```

## Configuring Oracle Cloud Credentials

Read the document **How to Configure the Terraform Provider for OCI (Oracle Cloud Infrastructure) with API Key Authentication** to configure credentials.
https://medium.com/@gmusumeci/how-to-configure-the-terraform-provider-for-oci-oracle-cloud-infrastructure-with-api-key-756b368647b1

## How to Set Up KopiCloud AD API

1. Get a License - Generate a free trial license (no credit card required) or purchase a license [here](https://www.kopicloud-ad-api.com/get-license)

2. Install **KopiCloud AD API** using the code in this repo

3. Join the machine to the AD Domain to manage using the API

4. Run the **KopiCloud AD API Config tool** located in the folder **C:\KopiCloud-AD-API-Config**
