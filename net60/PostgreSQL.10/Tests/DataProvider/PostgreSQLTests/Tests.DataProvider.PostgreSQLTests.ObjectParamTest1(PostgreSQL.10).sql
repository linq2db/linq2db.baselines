BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @categoryParam Integer -- Int32
SET     @categoryParam = 1

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."PersonID" = :categoryParam

