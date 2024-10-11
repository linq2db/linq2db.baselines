BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	(
		SELECT
			x."PersonID" + 1
	)
FROM
	"Person" x

