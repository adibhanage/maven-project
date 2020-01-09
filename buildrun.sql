SET SERVEROUTPUT ON SIZE UNLIMITED
SET WRAP OFF;
SET FEEDBACK OFF;

DECLARE
v_greetings VARCHAR2(100);
BEGIN
select 'Hello , today is = ' || to_char(sysdate, 'ddth Month yyyy') INTO v_greetings from dual;

DBMS_OUTPUT.PUT_LINE(v_greetings);
END;
/