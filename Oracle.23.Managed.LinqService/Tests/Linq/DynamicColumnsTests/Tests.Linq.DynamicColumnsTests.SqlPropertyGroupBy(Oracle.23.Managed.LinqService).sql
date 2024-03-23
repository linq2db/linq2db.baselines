BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."FirstName",
	COUNT(*)
FROM
	"Person" p
GROUP BY
	p."FirstName"

