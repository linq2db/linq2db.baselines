﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	p."FirstName", 
	p."PersonID", 
	p."LastName", 
	p."MiddleName", 
	p."Gender"
FROM
	"Person" p
WHERE
	p."FirstName" <> 'Jo' AND p."PersonID" = 1

