-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Data"
FROM
	(
		SELECT 20 AS "Id", 'Data 20' AS "Data" FROM sys.dual
		UNION ALL
		SELECT 21, 'Data 21' FROM sys.dual
		UNION ALL
		SELECT 22, 'Data 22' FROM sys.dual) t1

