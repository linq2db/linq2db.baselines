-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Data"
FROM
	(
		SELECT 0 AS "Id", 'Data 0' AS "Data" FROM sys.dual
		UNION ALL
		SELECT 1, 'Data 1' FROM sys.dual) t1
ORDER BY
	t1."Id"

