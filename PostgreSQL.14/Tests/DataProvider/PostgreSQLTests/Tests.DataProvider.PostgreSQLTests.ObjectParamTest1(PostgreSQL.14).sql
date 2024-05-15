BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @categoryParam Integer -- Int32
SET     @categoryParam = 1

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."PersonID" = :categoryParam

