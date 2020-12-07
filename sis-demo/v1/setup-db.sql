-- Sample PostgreSQL database for Database Migration Service testing

-- Creating schema and tables
select null as "Setting appropriate search path======================";
set search_path = sis_demo;

select null as "Cleaning up the database=============================";
\i ./clean-db.sql

select null as "Creating the tables==================================";
\i ./schema/create-table.sql

select null as "Creating required indexes============================";
-- \i ./schema/create-index.sql

select null as "Creating dms_user user:==============================";
\i ./user/create-user.sql

-- Copying base data
select null as "Copying base data into tables========================";
\copy sis_other.first_name    from './data/csv/first_names.csv'           DELIMITER ',' CSV HEADER;
\copy sis_other.last_name     from './data/csv/last_names.csv'            DELIMITER ',' CSV HEADER;
\copy semester      from './data/csv/semester.csv'              DELIMITER ',' CSV HEADER;
\copy school        from './data/csv/school.csv'                DELIMITER ',' CSV HEADER;
\copy department    from './data/csv/department.csv'            DELIMITER ',' CSV HEADER;
\copy course        from './data/csv/course.csv'                DELIMITER ',' CSV HEADER;
\copy ed_level      from './data/csv/list_education_levels.csv' DELIMITER ',' CSV HEADER;
\copy university    from './data/csv/university.csv'            DELIMITER ',' CSV HEADER;    
    
-- adding Foreign Keys
-- \i ./schema/foreign-keys.sql

-- creating required views
-- \i ./schema/create-view.sql

select null as "Checking row counts by table=========================";
select null as "first_name";
SELECT COUNT(*) from sis_other.first_name;
select null as "last_name";
SELECT COUNT(*) from sis_other.last_name;
select null as "semester";
SELECT COUNT(*) from sis_demo.semester;
select null as "school";
SELECT COUNT(*) from sis_demo.school;
select null as "department";
SELECT COUNT(*) from sis_demo.department;
select null as "course";
SELECT COUNT(*) from sis_demo.course;
select null as "course_schedule";
SELECT COUNT(*) from sis_demo.course_schedule
