@"
  CONNECT hr/hr@localdb

  drop table emp_demo;

  EXIT;
"@ | sqlplus.exe /nolog