-- Step 1: Backup the Database (MySQL)
-- Creating a full backup using mysqldump
mysqldump -u root -p mydatabase > mydatabase_backup.sql

-- Step 2: Backup the Database (PostgreSQL)
-- Using pg_dump to create a full backup
pg_dump -U postgres -d mydatabase -F c -f mydatabase_backup.dump

-- Step 3: Restore the Database (MySQL)
-- Restoring from the backup file
mysql -u root -p mydatabase < mydatabase_backup.sql

-- Step 4: Restore the Database (PostgreSQL)
-- Restoring the PostgreSQL database
pg_restore -U postgres -d mydatabase -F c mydatabase_backup.dump

-- Step 5: Verify Data Integrity
-- Checking record counts before and after restoration
SELECT COUNT(*) FROM mytable;
