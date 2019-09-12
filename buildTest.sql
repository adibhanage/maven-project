SET SERVEROUTPUT on;
--SET WRAP OFF;
SET FEEDBACK OFF;

exec ut.run(ut_junit_reporter());

EXIT;