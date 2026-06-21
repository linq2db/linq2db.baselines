-- PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	x_2."Id"
FROM
	(
		SELECT DISTINCT
			x_1."Id",
			x_1."DuplicateData",
			x_1."OrderData1",
			x_1."OrderData2"
		FROM
			(
				SELECT
					x."Id",
					x."DuplicateData",
					x."OrderData1",
					x."OrderData2"
				FROM
					"OrderByDistinctData" x
				UNION ALL
				SELECT
					t1."Id",
					t1."DuplicateData",
					t1."OrderData1",
					t1."OrderData2"
				FROM
					"OrderByDistinctData" t1
			) x_1
	) x_2
ORDER BY
	x_2."OrderData1" * 100 + x_2."Id" DESC
LIMIT :take

