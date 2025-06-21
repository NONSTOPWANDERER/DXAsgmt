# DXAsgmt
# Mental Health Check-In App

## Project Overview

This project is a **MySQL-based Mental Health Check-In App** schema developed as part of the DevifyX MySQL Core Assignment. It features a fully normalized relational database that supports daily check-ins, mood/stress tracking, mental health resources, user engagement, tagging, and search functionalities—all without any frontend or backend implementation.

---

## Features Implemented

### User Management
- Stores user credentials with hashed passwords
- Admin roles supported via separate admin table

### Daily Check-Ins
- Logs mood and stress levels once per day per user
- Optional personal notes per check-in

### Scales
- Supports customizable scales for mood and stress levels

### Historical Tracking
- View trends through past records stored by date

### Resource Library
- Store resources (articles, videos, helplines)
- Categorized and taggable content

### Resource Recommendations
- Suggested resources based on mood/stress level range

### Tags and Categories
- Many-to-many tagging for efficient search and filtering
- Linked resource categories

### Search Functionality
- Search by keyword
- Search by tag
- Search by keyword & tag combo via stored procedures

### Engagement Tracking
- Logs user access to resources

### Reminders
- User-configurable daily/weekly check-in reminders

### Admin Tools
- Role-based admin access (`moderator`, `superadmin`)
- Logging of admin actions (resource edits, tag changes, etc.)

---

## Files

| File Name              | Description |
|------------------------|-------------|
| `schema.sql`           | Full DDL schema: tables, constraints, indexes. |
| `sample_data.sql`      | Sample DML inserts demonstrating functionality.  |
| `search_procedures.sql`| Search stored procedures for keyword, tag, and combo search.  |

---

## Setup Instructions

1. Ensure MySQL 5.7 or higher is installed.
2. Create and switch to a new database:
    ```sql
    CREATE DATABASE mental_health_app;
    USE mental_health_app;
    ```
3. Run the SQL files in the following order:
    - `schema.sql`
    - `sample_data.sql`
    - `search_procedures.sql`

---

## Usage Examples

### Call stored procedures:
```sql
CALL SearchResourcesByKeyword('meditation');
CALL SearchResourcesByTag('Anxiety');
CALL SearchResourcesByKeywordAndTag('sleep', 'Sleep');
```
---
## Image for Final Tables and Procedures
![image](https://github.com/user-attachments/assets/57d547b9-5170-418b-a7f1-69dd58fb902c)
## ER Diagram
![Blank diagram (1)](https://github.com/user-attachments/assets/69f4e157-b71e-4c7a-8179-c5ba1f13b74d)


