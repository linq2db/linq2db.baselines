BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	MAX(r."PersonID")
FROM
	"Person" r
UNION ALL
SELECT
	r_1."PersonID"
FROM
	"Person" r_1

