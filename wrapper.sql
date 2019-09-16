
@betwnstr.fnc;
@test_betwnstr.pks;
@test_betwnstr.pkb;

SET SERVEROUTPUT ON SIZE UNLIMITED
SET WRAP OFF;
SET FEEDBACK OFF;

exec ut.run(ut_junit_reporter());

EXIT;

exit;