SET SERVEROUTPUT ON SIZE UNLIMITED
SET WRAP OFF;
SET FEEDBACK OFF;

exec ut.run(ut_xunit_reporter());

EXIT;