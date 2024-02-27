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
		WHEN Substr(p."FirstName", 2, 2) > 'oh'
			THEN 1
		WHEN Substr(p."FirstName", 2, 2) = 'oh'
			THEN 0
		ELSE -1
	END = 0 AND
	p."PersonID" = 1

