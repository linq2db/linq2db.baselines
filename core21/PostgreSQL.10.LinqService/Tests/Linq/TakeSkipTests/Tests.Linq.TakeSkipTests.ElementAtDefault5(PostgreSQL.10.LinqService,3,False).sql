﻿BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT 
	t1."FirstName", 
	t1."PersonID", 
	t1."LastName", 
	t1."MiddleName", 
	t1."Gender"
FROM
	"Person" t1
ORDER BY
	t1."LastName"
LIMIT 1 OFFSET 3 

