-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	g_1."GrpId",
	LISTAGG(CAST(g_1."IntV" AS VarChar(255)), '') WITHIN GROUP (ORDER BY g_1.PK)
FROM
	"ConcatGroupedTypedEntity" g_1
GROUP BY
	g_1."GrpId"
ORDER BY
	g_1."GrpId"

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1.PK,
	t1."GrpId",
	t1."GuidV",
	t1."IntV"
FROM
	"ConcatGroupedTypedEntity" t1

