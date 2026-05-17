-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Data"
FROM
	(
		SELECT 10 AS "Id", 'Data 10' AS "Data" FROM sys.dual
		UNION ALL
		SELECT 11, 'Data 11' FROM sys.dual) t1

