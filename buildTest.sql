SET SERVEROUTPUT ON SIZE UNLIMITED
SET WRAP OFF;
SET FEEDBACK OFF;

exec ut.run( 'ut3.test_betwnstr', ut_junit_reporter());

EXIT;