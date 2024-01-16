BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @categoryParam Integer -- Int32
SET     @categoryParam = 1

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."PersonID" = :categoryParam

