-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13
DECLARE @categoryParam Integer -- Int32
SET     @categoryParam = 1

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."PersonID" = :categoryParam

