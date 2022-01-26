**GOAL:**

Migrating the Café web application to use a fully managed Amazon Relational Database Service (Amazon RDS) instance instead of a local database instance.


_ Create an Amazon RDS MariaDB instance using the AWS CLI.

_ Migrate data from a local MariaDB database to an Amazon RDS MariaDB database.

_ Monitor an Amazon RDS instance using Amazon CloudWatch metrics.


The administration of database can be a burden. Doing weekly database backups requires employees to work extra hours on weekends because they must manually submit the backup job. They must also verify it successfully runs during the hours when the business is closed.

In addition, Installing a required patch can be struggling and waste more time.

Business' labor costs can be increased because they must pay for the overtime hours.

Migrating to Amazon RDS eliminates the burden of manually performing common database maintenance tasks, such as backups, patch installation, and upgrades. As a fully managed service, Amazon RDS performs these tasks automatically.




**The information that you should collect for the current environment:**

    CafeInstance Instance ID: i.nnnnnnnnnn
    CafeInstance Instance Type: t3.small
    CafeInstance Public DNS Name: ec2-xxx-xxx-xxx-xxx.us-west-2.compute.amazonaws.com
    CafeInstance Public IP Address: nnn.nnn.nnn.nnn
    CafeInstance Availability Zone: us-west-2a
    CafeInstance VPC ID: vpc-xxxxxxxxxxx
    CafeSecurityGroup Group ID: sg-zzzzzzzzzz
    Cafe VPC IPv4 CIDR block: 10.200.0.0/20
    Cafe Public Subnet 1 Subnet ID: subnet-yyyyyyyyyyy
    Cafe Public Subnet 1 IPv4 CIDR block: 10.200.0.0/24
    List of Availability Zones in the Region: us-west-2a, us-west-2b, and us-west-2c
    Number of orders: nn
    
 
