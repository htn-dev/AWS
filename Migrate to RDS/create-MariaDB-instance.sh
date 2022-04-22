# Check mariaDB version
sudo  amazon-linux-extras | grep mariadb
'''     
    DB instance identifier: CafeDBInstance
    Engine option: MariaDB
    DB engine version: 10.2.11
    DB instance class: db.t3.micro
    Allocated storage: 20 GB
    Availability Zone: CafeInstance Availability Zone
    DB Subnet group: CafeDB Subnet Group
    VPC security groups: CafeDatabaseSG
    Public accessibility: No
    Username: root
    Password: Re:Start!9
'''

aws rds create-db-instance \

--db-instance-identifier CafeDBInstance \

--engine mariadb \

--engine-version 10.2.11 \

--db-instance-class db.t3.micro \

--allocated-storage 20 \

--availability-zone <CafeInstance Availability Zone> \

--db-subnet-group-name "CafeDB Subnet Group" \

--vpc-security-group-ids <CafeDatabaseSG Group ID> \

--no-publicly-accessible \

--master-username root --master-user-password 'Re:Start!9'



aws rds create-db-instance --db-instance-identifier CafeDBInstance --engine mariadb --engine-version 10.2.11 --db-instance-class db.t3.micro --allocated-storage 20 --availability-zone <CafeInstance Availability Zone> --db-subnet-group-name "CafeDB Subnet Group" --vpc-security-group-ids <CafeDatabaseSG Group ID> --no-publicly-accessible --master-username root --master-user-password 'Re:Start!9'


''' Monitor the status of the database instance. This command displays the status of the database instance as the last returned value.  It also shows: 

    Endpoint address
    Availability Zone
    Preferred backup window
    Backup retention period
'''

aws rds describe-db-instances --db-instance-identifier CafeDBInstance --query "DBInstances[*].[Endpoint.Address,AvailabilityZone,PreferredBackupWindow,BackupRetentionPeriod,DBInstanceStatus]"
