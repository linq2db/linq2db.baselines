-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	g_1."GrpId",
	Coalesce(STRING_AGG(DISTINCT g_1."Value", '' ORDER BY g_1."Value"), '')
FROM
	"ConcatGroupedEntity" g_1
GROUP BY
	g_1."GrpId"
ORDER BY
	g_1."GrpId"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	t1."PK",
	t1."GrpId",
	t1."Value"
FROM
	"ConcatGroupedEntity" t1

