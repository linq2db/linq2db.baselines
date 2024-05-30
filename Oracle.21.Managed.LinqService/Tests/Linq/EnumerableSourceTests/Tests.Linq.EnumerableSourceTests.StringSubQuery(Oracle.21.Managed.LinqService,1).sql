BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t."FirstName",
	t."PersonID",
	t."LastName",
	t."MiddleName",
	t."Gender"
FROM
	"Person" t
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT 'j' AS "item" FROM sys.dual
				UNION ALL
				SELECT 'o' FROM sys.dual
				UNION ALL
				SELECT 'h' FROM sys.dual
				UNION ALL
				SELECT 'n' FROM sys.dual) x
		WHERE
			InStr(t."FirstName", x."item") - 1 > 0
	)

