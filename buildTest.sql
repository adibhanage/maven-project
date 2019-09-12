SET SERVEROUTPUT on FORMAT WRAPPED;
SET FEEDBACK OFF;

exec ut.run(ut_xunit_reporter());

EXIT;