BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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

