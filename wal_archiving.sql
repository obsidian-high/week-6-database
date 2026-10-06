-- Week 6 Database Assignment
-- WAL Archiving Verification

-- PostgreSQL configuration:
-- wal_level = replica
-- archive_mode = on
-- archive_command = 'cp %p /Users/fatush/backups/wal/%f'

SHOW wal_level;

SHOW archive_mode;

SHOW archive_command;

-- Force a WAL segment switch
SELECT pg_switch_wal();
