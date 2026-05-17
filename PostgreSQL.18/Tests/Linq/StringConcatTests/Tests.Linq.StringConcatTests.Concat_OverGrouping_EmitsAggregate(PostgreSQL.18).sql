-- PostgreSQL.18 PostgreSQL

SELECT
	g_1."GrpId",
	STRING_AGG(Coalesce(g_1."Value", ''), '' ORDER BY g_1."PK" NULLS FIRST)
FROM
	"ConcatGroupedEntity" g_1
GROUP BY
	g_1."GrpId"
ORDER BY
	g_1."GrpId"

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."PK",
	t1."GrpId",
	t1."Value"
FROM
	"ConcatGroupedEntity" t1

