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
	p."FirstName" NOT LIKE '%h~%n%' ESCAPE '~' AND p."PersonID" = 1

