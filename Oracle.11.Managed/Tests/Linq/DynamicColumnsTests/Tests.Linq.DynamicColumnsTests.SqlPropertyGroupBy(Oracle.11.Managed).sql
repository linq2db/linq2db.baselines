BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."FirstName",
	COUNT(*)
FROM
	"Person" p
GROUP BY
	p."FirstName"

