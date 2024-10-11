BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	(
		SELECT
			x."PersonID" + 1
	)
FROM
	"Person" x

