-- PostgreSQL.9.2 PostgreSQL
SELECT
	g_2."FirstName",
	g_2."InRange" BETWEEN 1 AND 3
FROM
	(
		SELECT
			g_1."FirstName",
			SUM(g_1."PersonID") as "Sum_1",
			MAX(g_1."PersonID") as "InRange"
		FROM
			"Person" g_1
		GROUP BY
			g_1."FirstName"
	) g_2
WHERE
	g_2."Sum_1" NOT BETWEEN 2 AND 3

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

