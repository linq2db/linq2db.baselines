-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	g_1."GrpId",
	LISTAGG(Lower(SUBSTR(RAWTOHEX(g_1."GuidV"), 7, 2) || SUBSTR(RAWTOHEX(g_1."GuidV"), 5, 2) || SUBSTR(RAWTOHEX(g_1."GuidV"), 3, 2) || SUBSTR(RAWTOHEX(g_1."GuidV"), 1, 2) || '-' || SUBSTR(RAWTOHEX(g_1."GuidV"), 11, 2) || SUBSTR(RAWTOHEX(g_1."GuidV"), 9, 2) || '-' || SUBSTR(RAWTOHEX(g_1."GuidV"), 15, 2) || SUBSTR(RAWTOHEX(g_1."GuidV"), 13, 2) || '-' || SUBSTR(RAWTOHEX(g_1."GuidV"), 17, 4) || '-' || SUBSTR(RAWTOHEX(g_1."GuidV"), 21, 12)), '') WITHIN GROUP (ORDER BY g_1.PK)
FROM
	"ConcatGroupedTypedEntity" g_1
GROUP BY
	g_1."GrpId"
ORDER BY
	g_1."GrpId"

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1.PK,
	t1."GrpId",
	t1."GuidV",
	t1."IntV"
FROM
	"ConcatGroupedTypedEntity" t1

