BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
		CROSS APPLY (
			SELECT 1 AS ID, 'Janet' AS "Name", p."LastName" AS "Sub" FROM sys.dual
			UNION ALL
			SELECT 1, 'Doe', p."LastName" FROM sys.dual) n
WHERE
	p."LastName" = n."Name" AND n."Name" IS NOT NULL

