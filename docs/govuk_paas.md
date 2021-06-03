# GOV.UK PaaS
Our application is hosted on [GOV.UK PaaS](https://cloud.service.gov.uk) in the London region. It is a service built and managed by a team in GDS.

It uses the open source Cloud Foundry platform and run on AWS.

## Getting a PaaS account

You can get an account by requesting in the `#digital-tools-support` channel. 
Request for an account with a `SpaceDeveloper` role to be created under your `@digital.education.gov.uk` email address and access to the `service-manual` organisation and the below spaces:

|Spaces       |
|:------------|
| service-manual-prod | # to be confirmed


## Using the Cloud Foundry CLI
The cloud foundry cli is used to manage and view apps and services hosted on PaaS. 
[Download](https://github.com/cloudfoundry/cli#downloads)


## Logging into a space
Use the below command to login for the first time
```shell
cf login -a https://api.london.cloud.service.gov.uk --sso
```
Once you enter the correct authentication code from https://login.london.cloud.service.gov.uk/passcode , you'll be prompted to select a space from a list of spaces.
```
Targeted org service-manual

Select a space:
1. service-manual-prod

Space (enter to skip):
```

