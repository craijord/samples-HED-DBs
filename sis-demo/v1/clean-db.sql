
-- ------------ DROP TABLE scripts -----------


DROP TABLE IF EXISTS sis_other.first_name;
DROP TABLE IF EXISTS sis_other.last_name;
DROP TABLE IF EXISTS sis_demo.student;
DROP TABLE IF EXISTS sis_demo.semester;
DROP TABLE IF EXISTS sis_demo.university;
DROP TABLE IF EXISTS sis_demo.school;
DROP TABLE IF EXISTS sis_demo.department;
DROP TABLE IF EXISTS sis_demo.course;
DROP TABLE IF EXISTS sis_demo.course_schedule;
DROP TABLE IF EXISTS sis_demo.ed_level;
DROP TABLE IF EXISTS sis_demo.course_registration;
DROP TABLE IF EXISTS sis_demo.degree_plan;



-- ------------ DROP SEQUENCE scripts -----------

DROP SEQUENCE IF EXISTS sis_demo.student_seq;
DROP SEQUENCE IF EXISTS sis_demo.semester_seq;
DROP SEQUENCE IF EXISTS sis_demo.school_seq;
DROP SEQUENCE IF EXISTS sis_demo.department_seq;
DROP SEQUENCE IF EXISTS sis_demo.course_seq;

----------------- DROP SCHEMA IF EXISTS ---------------------

DROP SCHEMA IF EXISTS sis_demo;
DROP SCHEMA IF EXISTS sis_other;
