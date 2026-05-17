-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	g_1."GrpId",
	Coalesce(LISTAGG(g_1."Value", '') WITHIN GROUP (ORDER BY g_1.PK), '')
FROM
	"ConcatGroupedEntity" g_1
GROUP BY
	g_1."GrpId"
ORDER BY
	g_1."GrpId"

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1.PK,
	t1."GrpId",
	t1."Value"
FROM
	"ConcatGroupedEntity" t1

