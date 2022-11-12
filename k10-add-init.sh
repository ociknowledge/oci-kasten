echo '-------Set S3 Variables'
echo -n "Enter your Object Storage Access Key ID and press [ENTER]: "
read AWS_ACCESS_KEY_ID
echo "" | awk '{print $1}'
echo $AWS_ACCESS_KEY_ID > ociaccess
echo -n "Enter your Object Storage Secret Access Key and press [ENTER]: "
read AWS_SECRET_ACCESS_KEY
echo $AWS_SECRET_ACCESS_KEY >> ociaccess

clear

echo "" | awk '{print $1}'
echo "You are ready to deploy now!"
echo "Execute ./k10-deploy.sh"
echo "" | awk '{print $1}'