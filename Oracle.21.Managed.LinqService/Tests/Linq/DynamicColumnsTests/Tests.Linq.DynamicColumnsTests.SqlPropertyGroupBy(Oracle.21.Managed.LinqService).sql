BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	p."FirstName",
	Count(*)
FROM
	"Person" p
GROUP BY
	p."FirstName"

