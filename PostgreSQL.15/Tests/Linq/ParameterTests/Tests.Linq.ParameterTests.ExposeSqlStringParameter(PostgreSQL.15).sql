﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @p Text(3) -- String
SET     @p = 'abc'

SELECT
	t."PersonID",
	t."FirstName",
	t."LastName",
	t."MiddleName",
	t."Gender"
FROM
	"Person" t
WHERE
	t."FirstName" = :p

