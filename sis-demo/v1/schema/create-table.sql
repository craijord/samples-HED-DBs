
------------------CREATE SCHEMA ------------------------------

CREATE SCHEMA sis_demo;
CREATE SCHEMA sis_other;

-- ------------ Write CREATE-SEQUENCE-stage scripts -----------

CREATE SEQUENCE sis_demo.student_seq
INCREMENT BY 1
MAXVALUE 9223372036854775807
MINVALUE 1000
NO CYCLE;

CREATE SEQUENCE sis_demo.semester_seq
INCREMENT BY 1
MAXVALUE 9223372036854775807
MINVALUE 1000
NO CYCLE;


CREATE SEQUENCE sis_demo.school_seq
INCREMENT BY 1
MAXVALUE 9223372036854775807
MINVALUE 1000
NO CYCLE;

CREATE SEQUENCE sis_demo.department_seq
INCREMENT BY 1
MAXVALUE 9223372036854775807
MINVALUE 1000
NO CYCLE;

CREATE SEQUENCE sis_demo.course_seq
INCREMENT BY 1
MAXVALUE 9223372036854775807
MINVALUE 1000
NO CYCLE;


-- ------------ Write CREATE-TABLE-stage scripts -----------


CREATE TABLE IF NOT EXISTS sis_other.first_name(
    gender CHARACTER(1),
    name CHARACTER VARYING(30)
    )
    WITH (
        OIDS=FALSE
    );

CREATE TABLE IF NOT EXISTS sis_other.last_name(
    name            CHARACTER VARYING(30),
    rank            NUMERIC(7,0),
    count           NUMERIC(7,0),
    prop100k        DOUBLE PRECISION,
    cum_prop100k    DOUBLE PRECISION,
    pctwhite        DOUBLE PRECISION,
    pctblack        DOUBLE PRECISION,
    pctapi          DOUBLE PRECISION,
    pctaian         DOUBLE PRECISION,
    pct2prace       DOUBLE PRECISION,
    pcthispanic     DOUBLE PRECISION
)
WITH (
OIDS=FALSE
);

CREATE TABLE IF NOT EXISTS sis_demo.student(
    id DOUBLE PRECISION DEFAULT NEXTVAL('sis_demo.student_seq'),
    first_name CHARACTER VARYING(30),
    last_name CHARACTER VARYING(30),
    gender CHARACTER VARYING(1),
    birth_date DATE,
    email_address CHARACTER VARYING(100),
    admitted NUMERIC (1,0),
    enrolled NUMERIC(1,0),
    parent_alum NUMERIC(1,0),
    parent_highest_ed CHARACTER VARYING(20),
    first_gen_hed_student NUMERIC(1,0),
    department_id DOUBLE PRECISION,
    admit_semester_id DOUBLE PRECISION,
    planned_grad_semester_id DOUBLE PRECISION,
    high_school_gpa DOUBLE PRECISION,
    was_hs_athlete_ind NUMERIC(1,0),
    home_state_name CHARACTER VARYING(50),
    admit_type CHARACTER VARYING(15),
    private_hs_indicator NUMERIC(1,0),
    multiple_majors_indicator NUMERIC(1,0),
    secondary_class_percentile NUMERIC(3,0),
    first_year_gpa DOUBLE PRECISION,
    cumulative_gpa DOUBLE PRECISION
)
WITH (
OIDS=FALSE
);

CREATE TABLE IF NOT EXISTS sis_demo.semester(
    id DOUBLE PRECISION DEFAULT NEXTVAL('sis_demo.semester_seq'),
    start_date DATE,
    end_date DATE,
    term_name CHARACTER VARYING(20),
    semester_year NUMERIC(4,0),
    school_year_name CHARACTER VARYING(20)
)
WITH (
OIDS=FALSE
);

CREATE TABLE IF NOT EXISTS sis_demo.university(
    id DOUBLE PRECISION,
    university_name CHARACTER VARYING(50),
    website_url  CHARACTER VARYING(50)
)
WITH (
    OIDS=FALSE
);

CREATE TABLE IF NOT EXISTS sis_demo.school(
    id DOUBLE PRECISION DEFAULT NEXTVAL('sis_demo.school_seq'),
    school_name CHARACTER VARYING(50),
    relative_website_url CHARACTER VARYING(50),
    university_id DOUBLE PRECISION
)
WITH (
OIDS=FALSE
);

CREATE TABLE IF NOT EXISTS sis_demo.department(
    id DOUBLE PRECISION DEFAULT NEXTVAL('sis_demo.department_seq'),
    name CHARACTER VARYING(100),
    code CHARACTER VARYING(4),
    school_id DOUBLE PRECISION
)
WITH (
OIDS=FALSE
);

CREATE TABLE IF NOT EXISTS sis_demo.course(
    id DOUBLE PRECISION DEFAULT NEXTVAL('sis_demo.course_seq'),
    course_name CHARACTER VARYING(150),
    course_level NUMERIC(6,0),
    course_code CHARACTER VARYING(10),
    school_id DOUBLE PRECISION,
    department_id DOUBLE PRECISION
)
WITH (
OIDS=FALSE
);

CREATE TABLE IF NOT EXISTS sis_demo.course_schedule(
    course_id DOUBLE PRECISION,
    semester_id DOUBLE PRECISION,
    staff_id DOUBLE PRECISION,
    lecture_days CHARACTER VARYING(7),
    lecture_start_time  TIMESTAMP WITHOUT TIME ZONE,
    lecture_duration NUMERIC(3,0),
    lab_days CHARACTER VARYING(7),
    lab_start_time TIMESTAMP WITHOUT TIME ZONE,
    lab_duration NUMERIC(3,0)
)
WITH (
OIDS=FALSE
);


CREATE TABLE IF NOT EXISTS sis_demo.ed_level(
    ed_level_id NUMERIC(2,0),
    ed_level_code CHARACTER VARYING(10),
    ed_level_desc CHARACTER VARYING(40)
)
WITH (
        OIDS=FALSE
);


CREATE TABLE IF NOT EXISTS sis_demo.course_registration(
    date_registered DATE,
    date_dropped    DATE,
    student_id      DOUBLE PRECISION,
    course_id       DOUBLE PRECISION,
    status          CHARACTER VARYING(10),
    semester_id     DOUBLE PRECISION
)
WITH (
    OIDS=FALSE
);


CREATE TABLE IF NOT EXISTS sis_demo.degree_plan(
    student_id                  DOUBLE PRECISION,
    course_id                   DOUBLE PRECISION,
    course_seq_no               NUMERIC(2,0),
    status                      CHARACTER VARYING(10),
    is_major_ind                NUMERIC(1,0),
    semester_seq_no             NUMERIC(2,0)    
)
WITH (
    OIDS=FALSE
)
