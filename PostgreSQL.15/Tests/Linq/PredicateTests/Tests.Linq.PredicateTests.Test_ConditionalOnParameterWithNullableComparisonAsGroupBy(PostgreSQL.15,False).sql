-- PostgreSQL.15 PostgreSQL12
SELECT
	g_2."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			NULL::Boolean as "Key_1"
		FROM
			"NullableFlagTable" g_1
	) g_2
GROUP BY
	g_2."Key_1"

-- PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."A",
	t1."B",
	t1."C",
	t1."Flag"
FROM
	"NullableFlagTable" t1

