# Using the Getting Started Terraform Module for HashiCorp Boundary

## Dev Mode

1. Show Boundary in dev mode.

```shell
boundary dev
```

Use the following credentials

Username: `admin`
password: `password`

2. show the resources that are generated.
3. Show how to log in using dev mode
4. browse around to show the generated resources

## Non-dev mode

1. Explain the challenge of logging in for initial set up in non-dev mode
    1.a Use the documentation to exlpain this point
2. Explain Erik and I setting this up manually for the first time and the pain we experienced
3. Luckily Boundary has first class support for Terraform so we can automate this to execute in a few seconds

## Demo

1. Reset the boundary environment in non-dev mode
2. Start up postgres container

```shell
docker-compose up -d
```

3. Initialise the database

```shell
boundary database init \
    -skip-auth-method-creation \
    -skip-host-resources-creation \
    -skip-scopes-creation \
    -skip-target-creation \
    -config config/config.hcl
```

4. Start boundary

```shell
boundary server -config config/config.hcl
```

5. Run through the sample code
6. TF apply
7. Log in using the created IAM objects
