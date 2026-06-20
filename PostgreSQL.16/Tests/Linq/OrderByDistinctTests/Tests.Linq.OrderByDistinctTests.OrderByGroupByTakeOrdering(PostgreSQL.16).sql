-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	g_1."OrderData1" * 100 + g_1."OrderData2",
	COUNT(*)
FROM
	"OrderByDistinctData" g_1
GROUP BY
	g_1."OrderData1",
	g_1."OrderData2"
ORDER BY
	g_1."OrderData1" * 100 + g_1."OrderData2" DESC
LIMIT :take

