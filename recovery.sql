-- Week 6 Database Assignment
-- Point-in-Time Recovery

-- Time recorded before the simulated disaster:
-- 2026-10-06 14:28:35.345258+03

-- Recovery configuration:
-- restore_command = 'cp /Users/fatush/backups/wal/%f %p'
-- recovery_target_time = '2026-10-06 14:28:35.345258+03'

-- After recovery, verify the students table:

SELECT COUNT(*) AS recovered_students
FROM students;

SELECT *
FROM students;
