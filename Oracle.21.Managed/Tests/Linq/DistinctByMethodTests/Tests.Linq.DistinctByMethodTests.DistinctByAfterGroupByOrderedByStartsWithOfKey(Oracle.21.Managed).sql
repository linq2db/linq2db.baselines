-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."RowNumber_2",
	t1."Count_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e."RowNumber" ORDER BY e."RowNumber_1" DESC, e."RowNumber_2" DESC) as "RowNumber",
			e."RowNumber_1",
			e."RowNumber_2",
			e."Count_1"
		FROM
			(
				SELECT
					g_2."Length_1" as "RowNumber",
					CASE
						WHEN g_2."Key_1" LIKE 'J%' ESCAPE '~' THEN 1
						ELSE 0
					END as "RowNumber_1",
					g_2."Key_1" as "RowNumber_2",
					COUNT(*) as "Count_1"
				FROM
					(
						SELECT
							g_1."FirstName" as "Key_1",
							Length(g_1."FirstName") as "Length_1"
						FROM
							"Person" g_1
					) g_2
				GROUP BY
					g_2."Key_1",
					g_2."Length_1"
			) e
	) t1
WHERE
	t1."RowNumber" = 1
ORDER BY
	t1."RowNumber_1" DESC,
	t1."RowNumber_2" DESC

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

