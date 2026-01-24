-- PostgreSQL.18 PostgreSQL
DECLARE @categoryParam Unknown -- Object
SET     @categoryParam = 1

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."PersonID" = :categoryParam

