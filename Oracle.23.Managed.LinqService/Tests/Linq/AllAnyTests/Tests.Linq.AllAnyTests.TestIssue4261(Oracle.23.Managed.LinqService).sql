BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

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

