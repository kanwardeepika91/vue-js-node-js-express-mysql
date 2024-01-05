```
1. This is Open source project taken from https://github.com/bezkoder/vue-js-node-js-express-mysql  is a simple project with nodejs and mysql

### Requirement: Dockerize this Application code and build using AWS Codepipeline 

2. I made changes to dockerize this code and create AWS Codepipeline to build code after each commit *(Documentation is in progess for AWS codepipeline)*
3. Application Infra code hosted on AWS ECS and other resources using Terraform code available in https://github.com/kanwardeepika91/terraform_nodejs_app_infra.git
```
 
### Tools:
```
*nodejs v12+
 terraform
 aws
 mysql
 docker*
```

### Tutorial Application
```
 Code: https://github.com/bezkoder/vue-js-node-js-express-mysql
 This is a Node.js - MySQL dummy application
 To build follow instructions in
 README.md
 Database configuration is app/config/db.config.js
```

### Below code details and dockerize App using Docker compose:
Fullstack with Node.js Express:
> [Vue.js + Node.js Express + MySQL](https://bezkoder.com/vue-js-node-js-express-mysql-crud-example/)

https://www.bezkoder.com/node-js-express-sequelize-mysql/

> https://www.bezkoder.com/docker-compose-nodejs-mysql/

#### Docker Commands to push the Images to ECR [manual method]
1. compose(write the dockercompose file) the docker-compose.yml
2. docker-compose up -d
3. docker ps
4. docker images
5. View push commands in ECR (repo created through terraform infra code or if you created it manually)
6. aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 249448484.dkr.ecr.us-east-1.amazonaws.com
7. Tag the image you created it locally to the ecr repo name as below
   docker tag dockercompose/vue-nodejs-express-mysql-compose:latest 249448484.dkr.ecr.us-east-1.amazonaws.com/dev_ecs_ecr:latest
8. docker images
9. push the tagged image using below command
   docker push 249448484.dkr.ecr.us-east-1.amazonaws.com/dev_ecs_ecr:latest
10. Use the buildspec for AWS Codebuild/pipeline  

```
These are related to buildspec.yml 
#env: mentioned as plain text in Environment variables or you can also use parameter store/
secrets manager
   #variables:
      # AWS_DEFAULT_REGION: ""
      #IMAGE_REPO_NAME: ""
      #IMAGE_TAG: ""
      #AWS_ACCOUNT_ID: ""

NOTE: while creating codebuild , Create a role and add permissions related to ECR to the role created for AWSCodeBuild- EC2InstanceProfileForImageBuilderECRContainerBuilds
While creating codepipeline - create a role and then add this role to codebuild to give permissions for codebuild to codepipeline


MYSQL commands : if you host mysql in RDS - mysql , then create DB and table

https://www.bezkoder.com/vue-js-node-js-express-mysql-crud-example/

mysql -u root -p
CREATE DATABASE deepika_db;
show databases;
use deepika_db;
CREATE TABLE IF NOT EXISTS `tutorials` (`id` INTEGER NOT NULL auto_increment , `title` VARCHAR(255), `description` VARCHAR(255), `published` TINYINT(1), `createdAt` DATETIME NOT NULL, `updatedAt` DATETIME NOT NULL, PRIMARY KEY (`id`)) ENGINE=InnoDB;

SHOW INDEX FROM `tutorials`;


```
**********************************************************************

### Additional details: 

# Vue.js + Node.js Express + MySQL: CRUD example on same server/port

For more detail, please visit:
> [How to serve/combine Vue App with Express](https://bezkoder.com/serve-vue-app-express/)

> [Vue.js CRUD App with Vue Router & Axios](https://bezkoder.com/vue-js-crud-app/)

> [Build Node.js Rest APIs with Express, Sequelize & MySQL](https://bezkoder.com/node-js-express-sequelize-mysql/)

More Practice:
> [Vue Pagination with Axios and API example](https://bezkoder.com/vue-pagination-axios/)

> [Server side Pagination in Node.js with Sequelize and MySQL](https://bezkoder.com/node-js-sequelize-pagination-mysql/)

> [Deploying/Hosting Node.js app on Heroku with MySQL database](https://bezkoder.com/deploy-node-js-app-heroku-cleardb-mysql/)

Associations:
> [Sequelize Associations: One-to-Many Relationship example](https://bezkoder.com/sequelize-associate-one-to-many/)

> [Sequelize Associations: Many-to-Many Relationship example](https://bezkoder.com/sequelize-associate-many-to-many/)

Fullstack with Node.js Express:
> [Vue.js + Node.js Express + MySQL](https://bezkoder.com/vue-js-node-js-express-mysql-crud-example/)

> [Vue.js + Node.js Express + PostgreSQL](https://bezkoder.com/vue-node-express-postgresql/)

> [Vue.js + Node.js Express + MongoDB](https://bezkoder.com/vue-node-express-mongodb-mevn-crud/)

Fullstack with Spring Boot:
> [Vue.js + Spring Boot](https://bezkoder.com/spring-boot-vue-js-crud-example/)

> [Vue.js + Spring Boot + MongoDB](https://bezkoder.com/spring-boot-vue-mongodb/)

Fullstack with Django:
> [Vue.js + Django](https://bezkoder.com/django-vue-js-rest-framework/)

Serverless with Firebase:
> [Vue Firebase Realtime Database: CRUD example](https://bezkoder.com/vue-firebase-realtime-database/)

> [Vue Firestore CRUD example](https://bezkoder.com/vue-firestore-crud/)

## Project setup
```
npm install
```

### Run
```
node server.js
```

