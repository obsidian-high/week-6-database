-- Week 6 Database Assignment
-- Streaming Replication

-- Create replication user:

CREATE ROLE replicator
WITH REPLICATION LOGIN PASSWORD 'reppass';

-- pg_hba.conf entry:
-- host replication replicator 127.0.0.1/32 md5

-- Create standby from the primary:
-- pg_basebackup -h 127.0.0.1 -U replicator -D ~/standby -R -P

-- Monitor replication from the primary:

SELECT application_name,
       state,
       pg_wal_lsn_diff(sent_lsn, replay_lsn) AS lag_bytes
FROM pg_stat_replication;
