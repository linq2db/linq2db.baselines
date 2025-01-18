BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT DISTINCT
	t1."Id"
FROM
	(
		SELECT
			x_2."Id",
			x_2."DuplicateData",
			x_2."OrderData1",
			x_2."OrderData2"
		FROM
			(
				SELECT
					x."Id",
					x."DuplicateData",
					x."OrderData1",
					x."OrderData2"
				FROM
					"OrderByDistinctData" x
				WHERE
					x."Id" BETWEEN 1 AND 9
				UNION ALL
				SELECT
					x_1."Id",
					x_1."DuplicateData",
					x_1."OrderData1",
					x_1."OrderData2"
				FROM
					"OrderByDistinctData" x_1
				WHERE
					x_1."Id" BETWEEN 10 AND 90
			) x_2
		UNION
		SELECT
			x_3."Id",
			x_3."DuplicateData",
			x_3."OrderData1",
			x_3."OrderData2"
		FROM
			"OrderByDistinctData" x_3
		WHERE
			x_3."Id" BETWEEN 100 AND 900
	) t1

