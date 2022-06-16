BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1

SELECT
	p."LastName"
FROM
	"Person" p
WHERE
	p."PersonID" = :ID
LIMIT 2

