# Project Work: Deploying and managing a WordPress website using AWS.
## Purpose
__*In this project work, you will deploy and manage a WordPress website using Amazon Web Services (AWS). You will utilize AWS services to create a reliable and efficient infrastructure for hosting and managing the WordPress site.*__

## Materials
Step-by-step guide for student You will need to set up the following software stack for hosting a WordPress website.

- **Web Server (Apache)**: A web server is essential for serving the WordPress files and handling incoming HTTP requests from users' browsers. You are required to install Apache Web Server.

- **Database Server (MySQL or MariaDB)**: WordPress requires a database to store content, settings, user data, and more. MySQL or MariaDB is commonly used as the database server to manage this data.

- **PHP**: PHP is a scripting language used by WordPress to generate dynamic content and interact with the database. It's essential for running the WordPress application.

These components together form the LAMP (Linux, Apache, MySQL, PHP) which provides the foundation for hosting WordPress.

You are required to implement the following services:

Note: You may do this task by utilizing AWS Elastic Beanstalk service (if you wish).

## Amazon EC2 Instance for hosting
Create an Amazon EC2 instance to host the WordPress application. You can choose Amazon Linux, Ubuntu, or other compatible AMIs. You need to install a web server that has support for php on the Amazon EC2 instance to host your WordPress application. You are required to open relevant ports and allow connections to your server so that the WordPress website is available to the public.

(Wordpress Installation Guide)[https://github.com/dipaish/aws23/blob/main/wpGuide.md]

## Amazon S3 for Media Storage
You will use Amazon S3 to store and serve media files like images and videos, to reduce the storage load on your EC2 instance and enhance the overall performance. That is, you are required to create a S3 bucket, configure bucket permissions and upload your media files to the S3 bucket. You can upload some random light weight media files (a couple of images). You will then integrate an image or two in your blog post. Follow the steps below:

1. Create a bucket.
2. Uncheck Block All Public Access.
3. Configure the bucket permission as below:
 3.1 Click the bucket name and on the top menu for the bucket, you will see Permissions tab. Click Permissions.
 3.2 Click Edit on the bucket policy and copy the following policy that allows retrieve permissions from the bucket. Remember to replace the bucket name with your own bucket name.

'''{
        "Version": "2012-10-17",
        "Statement": [
            {
                "Sid": "AllowPublicRead",
                "Effect": "Allow",
                "Principal": "*",
                "Action": "s3:GetObject",
                "Resource": "arn:aws:s3:::yourBucketName/*"
            }
        ]
    }'''


4.Upload an image to the bucket. You will get the Object URL.
5.Use that Object URL to integrate an image in your Wordpress post after your WordPress website is installed.

__* Note: (Optional)The ideal way of doing the above task is using some plugin in your Wrodpress website so that the images are automatically offloaded to the S3 bucket. If you wish, you can try the Optimole WordPress plugin. (How to offload WordPress media to S3 with Optimole)[https://wpshout.com/wordpress-s3-guide/#optimole] *__

# Amazon RDS for WordPress Database
You will set up an Amazon RDS (Relational Database Service) instance to host the WordPress database, ensuring data durability and automatic backups.

1. Create Amazon RDS service and select your MySQL as your database engine.
2. Specify DB instance size, storage, and allocated storage type based on your needs. (Free Tier, Single DB Instance)
3. Set a meaningful DB instance identifier and master username/password for database access.
4. Connectivity: Connect to an EC2 compute resource and select the EC2 instance that you have created above.
5. DB subnet group: Automatic Setup
6. Then Click Create Database. (Please note that it does not actually create the database but just the database instance, you are required to login to the RDS and create a database for wordpress)
7. Connect to your Database Instance from the EC2 instance and create a database that you want to use for your WordPress website.


# Cost Management
Utilize AWS Cost Explorer and Budgets to monitor and manage costs associated with the AWS services you have created above. Please conduct the following tasks:

1. Estimate the cost of running the above services based on minimal use of your services.

You can use AWS Pricing Calulator to estimate your cost. (Link)[https://calculator.aws/#/addService]