BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	g_1."Id",
	SUM(g_1."Id")
FROM
	(SELECT CAST(NULL AS Int) "Id" FROM sys.dual WHERE 1 = 0) g_1
GROUP BY
	g_1."Id"

