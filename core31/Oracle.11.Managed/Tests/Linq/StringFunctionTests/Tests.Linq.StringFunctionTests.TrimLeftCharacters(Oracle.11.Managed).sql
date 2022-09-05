BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."PersonID",
	p."FirstName"
FROM
	"Person" p
WHERE
	LTRIM(('  ' || p."FirstName" || ' '), ' J') = 'ohn ' AND
	p."PersonID" = 1

