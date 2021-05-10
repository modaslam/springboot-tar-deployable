if [ -z "$1" ]
then 
echo "Missing environment argument..."
echo "Usage : sh $0 dev/uat/sit/prod"
echo "Example : sh start.sh uat"
exit 1
fi

ENV=$1
# Use absolute path here if you need to run the script from a different working directory.
# Relative path only works if running the script from @artifact.id@-@version.number@/bin directory.
# i.e. directory where the script is located.
APP_HOME=../../@artifact.id@-@version.number@

touch -a $APP_HOME/pid.file

java -Dspring.profiles.active=$ENV -jar $APP_HOME/dist/@artifact.id@-@version.number@.jar >> /dev/null &

echo $! > $APP_HOME/pid.file
echo "Application started with $ENV configuration."