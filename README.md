
# Week 6 Database Assignment

## Hands-On Lab: Backups, Point-in-Time Recovery, and Replication

**Student:** Hassan  
**Course:** BSc Software Development  
**Unit:** Database Systems  
**Week:** 6  
**Database System:** PostgreSQL 14.21

---

## 1. Objective

The purpose of this practical was to learn how PostgreSQL databases can be protected against data loss using logical backups, physical backups, WAL archiving, Point-in-Time Recovery (PITR), and streaming replication.

The practical involved creating a sample database, backing it up, verifying the backup, configuring WAL archiving, creating a physical base backup, simulating data loss, and documenting the recovery and replication procedures.

---

## 2. Database Preparation

A PostgreSQL database named `bootcamp` was used.

A `students` table was created:

```sql
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    course VARCHAR(100),
    marks INTEGER
);
