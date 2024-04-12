BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 2

SELECT
	(p2."PersonID" * :ID) / 2,
	p2."FirstName"
FROM
	"Person" p2

