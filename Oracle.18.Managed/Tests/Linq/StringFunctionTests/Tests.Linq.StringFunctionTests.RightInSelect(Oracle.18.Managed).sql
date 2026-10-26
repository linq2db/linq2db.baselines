-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	Substr(p."FirstName", CASE
		WHEN Length(p."FirstName") > 2 THEN Length(p."FirstName") - 2
		ELSE 1
	END, 3)
FROM
	"Person" p
WHERE
	p."PersonID" = 1

