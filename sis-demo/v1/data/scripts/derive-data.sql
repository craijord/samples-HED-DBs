INSERT INTO sis_demo.course_schedule
SELECT 
    c.id,
    s.id,
    0,
    CASE
        WHEN MOD(LENGTH(c.course_name),2) = 0 THEN '0101010'
        ELSE '0010100'
    END lecture_days,
    s.start_date + interval '9 hour',
    60,
    '0000000',
    null,
    0
FROM 
    sis_demo.course c,
    sis_demo.semester s
;