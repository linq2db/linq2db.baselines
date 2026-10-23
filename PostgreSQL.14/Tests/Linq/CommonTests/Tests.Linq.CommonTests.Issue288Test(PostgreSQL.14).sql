-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	p."FirstName" IS NULL
LIMIT 1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @p Text(4) -- String
SET     @p = 'John'

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	p."FirstName" = :p
LIMIT 1

