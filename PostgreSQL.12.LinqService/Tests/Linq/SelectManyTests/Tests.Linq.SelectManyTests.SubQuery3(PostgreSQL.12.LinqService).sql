BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	t1."PersonID",
	p2."FirstName"
FROM
	"Person" t1,
	"Person" p2
WHERE
	p2."PersonID" = :id AND t1."PersonID" = p2."PersonID"

