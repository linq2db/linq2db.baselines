-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 3

SELECT
	t1."OrderData1"
FROM
	(
		SELECT
			g_2."OrderData1"
		FROM
			(
				SELECT DISTINCT
					g_1."OrderData1",
					g_1."OrderData2"
				FROM
					"OrderByDistinctData" g_1
			) g_2
		ORDER BY
			g_2."OrderData1" * 100 + g_2."OrderData2" DESC
	) t1
WHERE
	ROWNUM <= :take

