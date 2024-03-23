BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	(p."PersonID" + :ID) - 1,
	p."FirstName"
FROM
	"Person" p
WHERE
	p."PersonID" + :n = 2

