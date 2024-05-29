﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p Text(1) -- String
SET     @p = 'p'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Length(p."LastName") - Position('p' in Reverse(p."LastName")) = 2 AND
	(Position(:p in p."LastName") <> 0 OR Position(:p in p."LastName") IS NULL) AND
	p."PersonID" = 1

