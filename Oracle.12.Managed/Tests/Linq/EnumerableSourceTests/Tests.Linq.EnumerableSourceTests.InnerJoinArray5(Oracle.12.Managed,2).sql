-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	(
		SELECT 'Janet' AS "item", 'Janet' AS "item0" FROM sys.dual
		UNION ALL
		SELECT 'Doe', 'Doe' FROM sys.dual
		UNION ALL
		SELECT 'John', 'John' FROM sys.dual
		UNION ALL
		SELECT 'Doe', 'Doe' FROM sys.dual) n
		INNER JOIN "Person" p ON n."item" = p."LastName"

