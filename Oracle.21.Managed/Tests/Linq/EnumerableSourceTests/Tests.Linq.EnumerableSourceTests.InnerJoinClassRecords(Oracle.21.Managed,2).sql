-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
		INNER JOIN (
			SELECT 'Janet' AS "FirstName", 1 AS ID, NULL AS "LastName", NULL AS "MiddleName", 'M' AS "Gender" FROM sys.dual
			UNION ALL
			SELECT 'Doe', 2, NULL, NULL, 'M' FROM sys.dual) n ON p."PersonID" = n.ID

