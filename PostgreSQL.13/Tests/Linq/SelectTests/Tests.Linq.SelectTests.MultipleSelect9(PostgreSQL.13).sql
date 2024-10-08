BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Length Integer -- Int32
SET     @Length = 2

SELECT
	(p2."PersonID" * :Length) / 2,
	p2."FirstName"
FROM
	"Person" p2

