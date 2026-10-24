-- ClickHouse.MySql ClickHouse
SELECT
	x_2.Id
FROM
	(
		SELECT DISTINCT
			x_1.Id as Id,
			x_1.DuplicateData as DuplicateData,
			x_1.OrderData1 as OrderData1,
			x_1.OrderData2 as OrderData2
		FROM
			(
				SELECT
					x.Id as Id,
					x.DuplicateData as DuplicateData,
					x.OrderData1 as OrderData1,
					x.OrderData2 as OrderData2
				FROM
					OrderByDistinctData x
				UNION ALL
				SELECT
					t1.Id as Id,
					t1.DuplicateData as DuplicateData,
					t1.OrderData1 as OrderData1,
					t1.OrderData2 as OrderData2
				FROM
					OrderByDistinctData t1
			) x_1
	) x_2
ORDER BY
	x_2.OrderData1 * 100 + x_2.Id DESC
LIMIT 3

