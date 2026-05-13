-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	g_1."GrpId",
	STRING_AGG(g_1."IntV"::text, '' ORDER BY g_1."PK" NULLS FIRST)
FROM
	"ConcatGroupedTypedEntity" g_1
GROUP BY
	g_1."GrpId"
ORDER BY
	g_1."GrpId"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."PK",
	t1."GrpId",
	t1."GuidV",
	t1."IntV"
FROM
	"ConcatGroupedTypedEntity" t1

