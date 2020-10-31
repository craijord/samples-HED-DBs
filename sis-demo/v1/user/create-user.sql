DROP USER IF EXISTS dms_user;
CREATE USER dms_user WITH PASSWORD 'dms_user';
GRANT ALL PRIVILEGES ON                  SCHEMA sis_demo TO dms_user;
GRANT ALL PRIVILEGES ON ALL TABLES    IN SCHEMA sis_demo TO dms_user;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA sis_demo TO dms_user;
