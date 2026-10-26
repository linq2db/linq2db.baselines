-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	CASE
		WHEN Length(p."FirstName") = 2 THEN p."FirstName" || '123'
		ELSE Substr(p."FirstName", 1, 2) || '123' || Substr(p."FirstName", CASE
			WHEN Length(p."FirstName") - (Length(p."FirstName") - 2) > -1
				THEN Length(p."FirstName") - (Length(p."FirstName") - 2) + 1
			ELSE 1
		END, Length(p."FirstName") - 2)
	END = 'Jo123hn' AND
	p."PersonID" = 1

