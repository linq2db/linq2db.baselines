-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Substr(p."FirstName", CASE
		WHEN Length(p."FirstName") > 2 THEN Length(p."FirstName") - 2
		ELSE 1
	END, 3) = 'ohn' AND
	p."PersonID" = 1

