SET SERVEROUTPUT ON SIZE UNLIMITED
SET WRAP OFF;
SET FEEDBACK OFF;

exec ut.run('ut3.ut_garrisons', ut_coverage_html_reporter());

EXIT;

