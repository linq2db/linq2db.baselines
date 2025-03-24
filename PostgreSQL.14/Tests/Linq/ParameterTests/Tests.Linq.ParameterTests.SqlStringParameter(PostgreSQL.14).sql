﻿BeforeExecute
--  PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @p Text(4) -- String
SET     @p = 'John'

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
LIMIT 2

BeforeExecute
--  PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @p Text(6) -- String
SET     @p = 'Tester'

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
LIMIT 2

