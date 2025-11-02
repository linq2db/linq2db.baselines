-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	p."LastName"
FROM
	"Person" p
WHERE
	p."PersonID" = :p
LIMIT 2

