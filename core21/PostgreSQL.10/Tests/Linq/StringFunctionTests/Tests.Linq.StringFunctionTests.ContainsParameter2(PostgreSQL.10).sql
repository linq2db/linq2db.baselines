﻿BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @str_1 Text(6) -- String
SET     @str_1 = '%o~%h%'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."FirstName" NOT ILIKE :str_1 ESCAPE '~' AND p."PersonID" = 1

