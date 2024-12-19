BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	y."item"
FROM
	"Person" x
		CROSS JOIN (
			SELECT 'M' AS "item" FROM sys.dual
			UNION ALL
			SELECT 'F' FROM sys.dual
			UNION ALL
			SELECT 'U' FROM sys.dual
			UNION ALL
			SELECT 'O' FROM sys.dual) y

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

