-- PostgreSQL.13 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3

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
LIMIT :take

