SET SERVEROUTPUT on FORMAT WRAPPED;
SET FEEDBACK OFF;

exec ut.run(ut_documentation_reporter(), a_color_console=>true);

EXIT;