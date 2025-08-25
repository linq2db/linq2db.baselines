BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
		INNER JOIN (
			SELECT 1 AS ID FROM sys.dual
			UNION ALL
			SELECT 2 FROM sys.dual) n ON p."PersonID" = n.ID

