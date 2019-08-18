This project is an example of how to set up a basic API using API Gateway and Lambda.

# Usage
This project requires [fish](https://fishshell.com/), and [Terraform](https://www.terraform.io/).

1. Clone the repository and change directory.
```
$ git clone https://github.com/johesoman/aws-serverless-basic-node.git
$ cd aws-serverless-basic-node
```

2. Source the environment.
```
$ source env.fish
```

3. Build the code and deploy the infrastructure.
```
$ make deploy
```

4. The output from Terraform should contain a URL.
```
url = YOUR-URL
```
You can use this URL to call the API.
```
$ curl -X POST \
    YOUR-URL \
    -d '{"answer": 42}'
```
