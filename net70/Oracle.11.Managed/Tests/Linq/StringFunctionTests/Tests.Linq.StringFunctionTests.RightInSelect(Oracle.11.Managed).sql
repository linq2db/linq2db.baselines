BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	Substr(p."FirstName", Length(p."FirstName") - 2, 3)
FROM
	"Person" p
WHERE
	p."PersonID" = 1

