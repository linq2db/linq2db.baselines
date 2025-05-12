BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	Substr(p."FirstName", Length(p."FirstName") - 2, 3)
FROM
	"Person" p
WHERE
	p."PersonID" = 1

