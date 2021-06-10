# GOV.UK PaaS
Our application is hosted on [GOV.UK PaaS](https://cloud.service.gov.uk) in the London region. It is a service built and managed by a team in GDS.

It uses the open source Cloud Foundry platform and runs on AWS.

## Getting a PaaS account

You can get an account by requesting in the `#digital-tools-support` channel. 
Request for an account with a `SpaceDeveloper` role to be created under your `@digital.education.gov.uk` email address and access to the `dfe` organisation and the below spaces:

|Spaces       |
|:------------|
| dfe-service-manual-prod | 

For more information, visit [this link](https://technical-guidance.education.gov.uk/guides/govuk-paas/getting-started/#getting-started)

## Using the Cloud Foundry CLI
The cloud foundry cli is used to manage and view apps and services hosted on PaaS. 

[Download it here](https://github.com/cloudfoundry/cli#downloads)


## Logging into a space
Use the below command to login for the first time
```shell
cf login -a https://api.london.cloud.service.gov.uk --sso
```
Once you enter the correct authentication code from https://login.london.cloud.service.gov.uk/passcode , you'll be prompted to select a space from a list of spaces.

If you don't have Single Sign On (SSO) enabled, log in with your username: 

```shell
cf login -a https://api.london.cloud.service.gov.uk -u <username>
```

Replacing `<username>` with your username

```shell
Targeted org service-manual

Select a space:
1. dfe-service-manual-prod

Space (enter to skip):
```

## Creating the service and domain

The service was created using:

```shell
cf create-service cdn-route cdn-route service-manual-prod-cdn-route -c '{"domain": "service-manual.education.gov.uk" }'
```