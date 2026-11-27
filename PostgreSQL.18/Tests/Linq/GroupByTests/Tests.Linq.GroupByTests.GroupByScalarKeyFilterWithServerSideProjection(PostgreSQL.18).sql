-- PostgreSQL.18 PostgreSQL12
SELECT
	Length(g_2."Key_1")
FROM
	(
		SELECT
			g_1."FirstName" as "Key_1",
			SUM(g_1."PersonID") as "Sum_1"
		FROM
			"Person" g_1
		GROUP BY
			g_1."FirstName"
	) g_2
WHERE
	g_2."Sum_1" NOT BETWEEN 2 AND 3

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

