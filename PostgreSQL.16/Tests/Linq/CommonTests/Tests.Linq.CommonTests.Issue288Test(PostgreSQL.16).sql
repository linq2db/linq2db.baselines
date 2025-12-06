-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	p."FirstName" IS NULL
LIMIT 1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @p Text(4) -- String
SET     @p = 'John'

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	p."FirstName" = :p
LIMIT 1

