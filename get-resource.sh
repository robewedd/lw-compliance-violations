#!/bin/zsh

curl -X GET -H 'Content-Type: application/json' -H 'Authorization: Bearer '$(lacework access-token) --header 'Account-name: '${lacework_subaccount}  https://${lacework_tenant}.fra.lacework.net/api/v1/external/compliance/aws/GetLatestComplianceReport\?AWS_ACCOUNT_ID\=680354150194\&FILE_FORMAT\=json |  jq '.results[] | {account_id?}'
