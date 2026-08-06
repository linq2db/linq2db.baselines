-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"Person" t1
WHERE
	1 = 0

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	COUNT(*)
FROM
	"Person" t1
WHERE
	t1."PersonID" = :id

