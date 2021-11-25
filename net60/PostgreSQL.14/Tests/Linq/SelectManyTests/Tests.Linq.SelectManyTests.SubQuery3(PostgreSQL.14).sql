BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	p1."PersonID",
	p2."FirstName"
FROM
	"Person" p1
		CROSS JOIN "Person" p2
WHERE
	p1."PersonID" = p2."PersonID" AND p2."PersonID" = :id

