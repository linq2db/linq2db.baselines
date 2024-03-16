BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	p."FirstName",
	Count(*)
FROM
	"Person" p
GROUP BY
	p."FirstName"

