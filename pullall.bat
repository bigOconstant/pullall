chdir C:\development\vh-web-caregiverportal

git pull


chdir C:\development\vivify-platform\Database

git pull

CALL MigrateDatabase.bat

chdir C:\development\vivify-kitting-platform\Vivify.Kit.Database

git pull

CALL MigrateDatabase kittingportal
