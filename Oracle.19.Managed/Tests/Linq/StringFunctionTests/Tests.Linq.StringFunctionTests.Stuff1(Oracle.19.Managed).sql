-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	(Substr(p."FirstName", 1, 2) || '123' || Substr(p."FirstName", CASE
		WHEN Length(p."FirstName") - (Length(p."FirstName") - 3) > -1
			THEN Length(p."FirstName") - (Length(p."FirstName") - 3) + 1
		ELSE 1
	END, Length(p."FirstName") - 3)) = 'Jo123n' AND
	p."PersonID" = 1

