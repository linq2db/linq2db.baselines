﻿BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @str_1 Text(4) -- String
SET     @str_1 = '%oh%'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."FirstName" ILIKE :str_1 ESCAPE '~' AND p."PersonID" = 1

