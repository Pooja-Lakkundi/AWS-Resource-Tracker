# AWS resource usage monitor with cron
aws_resource_tracker

# AWS Resource Tracker with Cron

This project is a simple Bash script that tracks usage of various AWS resources such as S3 Buckets, EC2 Instances, Lambda Functions, and IAM Users and logs the details into a file using cron jobs.

## Features
- Lists AWS resources and logs them to a file.
- Integrates with `cron` to automate the script execution at specified intervals.
- Logs the time of each execution, making it easy to track resource changes over time.

## Prerequisites
- AWS CLI installed and configured to list S3, EC2, Lambda, and IAM resources.
- Linux or macOS environment to run the script and `crontab`.

## Setup

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/aws-resource-tracker-cron.git
   cd Aws-Resource-Tracker

2. Make the script Executable:
   ```bash
   chmod +x aws_resource_tracker.sh

3. Schedule the script using cron:
   ```bash
   crontab -e
   */10 * * * * /path/to/aws_resource_tracker.sh #add this line at the end of the crontab   
   script

4. Check the log:
   ```bash
   cat resourceTracker
