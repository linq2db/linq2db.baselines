-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 3

SELECT
	t1."Key_1",
	t1."Count_1"
FROM
	(
		SELECT
			g_1."OrderData1" * 100 + g_1."OrderData2" as "Key_1",
			COUNT(*) as "Count_1"
		FROM
			"OrderByDistinctData" g_1
		GROUP BY
			g_1."OrderData1",
			g_1."OrderData2"
		ORDER BY
			g_1."OrderData1" * 100 + g_1."OrderData2" DESC
	) t1
WHERE
	ROWNUM <= :take
ORDER BY
	t1."Key_1" DESC

