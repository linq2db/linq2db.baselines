-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
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

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
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

