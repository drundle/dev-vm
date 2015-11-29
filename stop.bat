ECHO ON

cd statehosts
vagrant halt
cd..

cd apphosts
vagrant halt
cd..

cd proxy
vagrant halt
cd..

cd boxing
vagrant halt
cd..


if errorlevel 1 (
  ECHO FAILURE! Vagrant VM unresponsive...
)