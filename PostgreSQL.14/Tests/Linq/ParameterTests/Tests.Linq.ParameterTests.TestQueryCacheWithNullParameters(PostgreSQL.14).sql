-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Person" t1
WHERE
	1 = 0

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	COUNT(*)
FROM
	"Person" t1
WHERE
	t1."PersonID" = :id

