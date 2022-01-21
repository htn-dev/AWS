**OBJECTIVES**

    Configure a CloudTrail trail
    Analyze CloudTrail logs by using various methods to discover relevant information
    Import CloudTrail log data into Athena
    Run queries in Athena to filter CloudTrail log entries
    Resolve security concerns within the AWS account and on an EC2 Linux instance
    
In this activity, you create an AWS CloudTrail trail that audits actions taken in your account. You then investigate to determine who modified the Café website.

The activity starts with an Amazon Elastic Compute Cloud (Amazon EC2) instance named Café Web Server, which runs a web application that hosts the Café website.

    In Task 1, you observe that the website looks normal.

    In Task 2, soon after you create a trail with CloudTrail, you notice that the website has been hacked and that part of the hack involved an action during which someone modified the security group settings.

    In Task 3, you use a variety of methods to analyze the CloudTrail logs, including the Linux grep utility and the AWS Command Line Interface (AWS CLI).

    In Task 4, you use Amazon Athena to search the CloudTrail logs.
        In the Challenge section that concludes Task 4, you work to identify the hacker.

    In Task 5, now that you have discovered the culprit, you remove that user's access. You also take steps to reduce the chances that the AWS account and the Café website will be hacked again.
