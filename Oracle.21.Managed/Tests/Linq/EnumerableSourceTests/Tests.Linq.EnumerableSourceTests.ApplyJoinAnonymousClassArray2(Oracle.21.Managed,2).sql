BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	n."Name"
FROM
	"Person" p
		INNER JOIN (
			SELECT 'Janet' AS "Name" FROM sys.dual
			UNION ALL
			SELECT 'Doe' FROM sys.dual) n ON p."LastName" = n."Name"

