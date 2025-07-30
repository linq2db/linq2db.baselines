BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	x."FirstName",
	x."PersonID",
	x."LastName",
	x."MiddleName",
	x."Gender"
FROM
	"Person" x
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT 'John' AS "item" FROM sys.dual
				UNION ALL
				SELECT 'Not John' FROM sys.dual) y
		WHERE
			y."item" = x."FirstName"
	)

