﻿BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	p."FirstName", 
	p."PersonID", 
	p."LastName", 
	p."MiddleName", 
	p."Gender"
FROM
	"Person" p
WHERE
	Lower(p."FirstName") = 'john' AND p."PersonID" = 1

