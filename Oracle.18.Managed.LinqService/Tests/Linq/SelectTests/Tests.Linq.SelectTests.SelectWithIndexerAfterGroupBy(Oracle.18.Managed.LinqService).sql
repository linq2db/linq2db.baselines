BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	x."Key_1",
	x."Index_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (ORDER BY g_2."Key_1" DESC) - 1 as "Index_1",
			g_2."Key_1"
		FROM
			(
				SELECT
					g_1."PersonID" as "Key_1"
				FROM
					"Person" g_1
				GROUP BY
					g_1."PersonID"
			) g_2
	) x
WHERE
	x."Index_1" > 0
ORDER BY
	x."Key_1" DESC

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

