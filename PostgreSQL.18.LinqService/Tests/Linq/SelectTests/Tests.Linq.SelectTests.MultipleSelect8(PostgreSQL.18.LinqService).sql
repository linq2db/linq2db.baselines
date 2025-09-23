BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @Length Integer -- Int32
SET     @Length = 2

SELECT
	(p2."PersonID" * 2) / :Length,
	p2."FirstName"
FROM
	"Person" p2

