BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	'I-' || Cast(x."PersonID" as VarChar(11)),
	x."FirstName"
FROM
	"Person" x
UNION ALL
SELECT
	Cast(NULL as text),
	'QUASI-' || x_1."FirstName"
FROM
	"Person" x_1

