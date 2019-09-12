CREATE OR REPLACE PROCEDURE pr_ci_demo 
(
  vlast_name IN VARCHAR2 
) AS 
BEGIN
  UPDATE emp_demo SET salary = (salary * 0.002) + salary WHERE last_name = vlast_name;
  
  --UPDATE emp_demo SET commission_pct = 0.03  WHERE last_name = vlast_name;
  
  COMMIT;
  EXCEPTION WHEN OTHERS
    THEN
    ROLLBACK;
    RAISE;
END pr_ci_demo;
/