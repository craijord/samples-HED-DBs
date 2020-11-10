
-- ------------ DROP TABLE scripts -----------


DROP TABLE IF EXISTS sis_demo.first_name;
DROP TABLE IF EXISTS sis_demo.last_name;
DROP TABLE IF EXISTS sis_demo.student;
DROP TABLE IF EXISTS sis_demo.semester;
DROP TABLE IF EXISTS sis_demo.school;
DROP TABLE IF EXISTS sis_demo.department;
DROP TABLE IF EXISTS sis_demo.course;
DROP TABLE IF EXISTS sis_demo.course_schedule;
DROP TABLE IF EXISTS sis_demo.list_education_levels;



-- ------------ DROP SEQUENCE scripts -----------

DROP SEQUENCE IF EXISTS sis_demo.student_seq;
DROP SEQUENCE IF EXISTS sis_demo.semester_seq;
DROP SEQUENCE IF EXISTS sis_demo.school_seq;
DROP SEQUENCE IF EXISTS sis_demo.department_seq;
DROP SEQUENCE IF EXISTS sis_demo.course_seq;

----------------- DROP SCHEMA IF EXISTS ---------------------

DROP SCHEMA IF EXISTS sis_demo;
