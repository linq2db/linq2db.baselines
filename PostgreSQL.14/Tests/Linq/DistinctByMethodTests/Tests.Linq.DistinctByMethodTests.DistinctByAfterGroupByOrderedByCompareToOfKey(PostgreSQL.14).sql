-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	t1."Key_1",
	t1."Count_1"
FROM
	(
		SELECT DISTINCT ON (g_3."Length_1")
			g_3.c1,
			g_3."Key_1",
			g_3."Count_1"
		FROM
			(
				SELECT
					g_2."Length_1",
					CASE
						WHEN g_2."Key_1" > 'K' THEN 1
						WHEN g_2."Key_1" = 'K' THEN 0
						ELSE -1
					END as c1,
					g_2."Key_1",
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
			) g_3
		ORDER BY
			g_3."Length_1",
			g_3.c1,
			g_3."Key_1" DESC
	) t1
ORDER BY
	t1.c1,
	t1."Key_1" DESC

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

