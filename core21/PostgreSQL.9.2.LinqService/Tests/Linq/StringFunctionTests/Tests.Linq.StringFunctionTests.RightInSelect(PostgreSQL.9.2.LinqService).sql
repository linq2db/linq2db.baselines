﻿BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	Substring(p."FirstName", Length(p."FirstName") - 2, 3)
FROM
	"Person" p
WHERE
	p."PersonID" = 1

