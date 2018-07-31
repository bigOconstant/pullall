#!/bin/bash
# A script to pull all code changes and run migrate database
FRONTEND=/mnt/c/development/vh-web-caregiverportal
BACKEND=/mnt/c/development/vivify-platform
KITTINGPORTAL=/mnt/c/development/vivify-kitting-platform

STASHING=Stashing
PULLING=pulling
APPLYING="Applying Stash"

(cd $FRONTEND && echo $STASHING && git stash && echo $PULLING&& git pull )

(cd $BACKEND && echo $STASHING && git stash && echo $PULLING && git pull)

(cd $KITTINGPORTAL && echo $STASHING && git stash && echo $PULLING && git pull)


#Call database migrations
echo 'Migrating vivifyplatform'

(cd $BACKEND/Database && cmd.exe /C "C:\development\vivify-platform\Database\MigrateDatabase.bat")


echo "Migrating Kitting portal"
(cd $KITTINGPORTAL/Vivify.Kit.Database && cmd.exe /C "C:\development\vivify-kitting-platform\Vivify.Kit.Database\MigrateDatabase.bat kittingportal")
