BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

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
		WHEN LENGTH(p."FirstName") = 2 THEN p."FirstName" || '123'
		ELSE Substr(p."FirstName", 1, 2) || '123' || Substr(p."FirstName", LENGTH(p."FirstName") - (LENGTH(p."FirstName") - 2) + 1, LENGTH(p."FirstName") - 2)
	END = 'Jo123hn' AND
	p."PersonID" = 1

