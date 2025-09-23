BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @Length Integer -- Int32
SET     @Length = 2

SELECT
	(p2."PersonID" * 2) / :Length,
	p2."FirstName"
FROM
	"Person" p2

