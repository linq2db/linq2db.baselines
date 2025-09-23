BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Length Integer -- Int32
SET     @Length = 2

SELECT
	(p5."PersonID" * :Length) / 2,
	p5."FirstName"
FROM
	"Person" p5

