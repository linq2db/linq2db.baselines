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
	p."PersonID" = 1 AND p."MiddleName" IS NULL AND p."FirstName" IS NOT NULL

