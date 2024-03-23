BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	p."PersonID",
	p."FirstName"
FROM
	"Person" p
WHERE
	p."PersonID" + :n = 2

