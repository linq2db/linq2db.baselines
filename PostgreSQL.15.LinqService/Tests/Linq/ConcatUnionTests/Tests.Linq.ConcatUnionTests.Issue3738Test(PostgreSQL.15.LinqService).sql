BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	'I-' || x."PersonID",
	x."FirstName"
FROM
	"Person" x
UNION ALL
SELECT
	Cast(NULL as text),
	'QUASI-' || x_1."FirstName"
FROM
	"Person" x_1

