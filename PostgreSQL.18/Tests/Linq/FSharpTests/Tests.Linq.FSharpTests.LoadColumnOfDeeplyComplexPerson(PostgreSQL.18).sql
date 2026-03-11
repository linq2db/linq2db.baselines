-- PostgreSQL.18 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	p."LastName"
FROM
	"Person" p
WHERE
	p."PersonID" = :p
LIMIT 2

