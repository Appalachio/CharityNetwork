# Charity Network
![CI Tests](https://github.com/appalachio/charitynetwork/actions/workflows/ci.yml/badge.svg?branch=main)

Charity Network helps connect charities with donations available in their area.

Think a "social network" for charities, non-profits, community organizations, and individuals to browse, add, and claim donations in their area!



## Contributions

This application is free and open source software. Contributions are welcomed! Please review the [Code of Conduct](https://github.com/appalachio/charitynetwork/blob/main/CODE_OF_CONDUCT.md).

### Development

To development this application, you must prepare your local development enviornment.

First, clone the repository:
```console
git clone git@github.com:appalachio/charitynetwork.git
```

Enter the project directory:
```console
cd charitynetwork/
```

Run the setup script to install dependencies and prepare the database:
```console
bin/setup
```

Finally, launch the necessary development servers:
```console
bin/dev
```

Visit localhost:3000 in your web browser!

### Tests

Every contribution must pass all application tests and checks before they will be considered.

First, ensure the test database is setup:
```console
bin/rails db:prepare
```

Run the test script:
```console
bin/test
```

To view each individual check, open and view the bin/test script.

