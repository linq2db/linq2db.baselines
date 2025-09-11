BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	p1."PersonID",
	p2."FirstName"
FROM
	"Person" p1
		CROSS JOIN "Person" p2
WHERE
	p2."PersonID" = :id AND p1."PersonID" = p2."PersonID"

