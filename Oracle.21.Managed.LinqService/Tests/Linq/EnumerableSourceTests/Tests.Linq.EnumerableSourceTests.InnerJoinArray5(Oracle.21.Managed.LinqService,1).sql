BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	(
		SELECT 'Janet' AS "item" FROM sys.dual
		UNION ALL
		SELECT 'Doe' FROM sys.dual
		UNION ALL
		SELECT 'John' FROM sys.dual
		UNION ALL
		SELECT 'Doe' FROM sys.dual) n
		INNER JOIN "Person" p ON n."item" = p."LastName"

