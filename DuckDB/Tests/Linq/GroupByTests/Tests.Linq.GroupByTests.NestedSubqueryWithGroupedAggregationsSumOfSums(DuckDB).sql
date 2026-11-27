-- DuckDB
SELECT
	product.Id,
	(
		SELECT
			SUM(t1.OnOrder)
		FROM
			(
				SELECT
					SUM(CAST(testGroup.Quantity AS DECIMAL)) as OnOrder
				FROM
					GroupedSumLineItem testGroup
				GROUP BY
					testGroup.Id
			) t1
	)
FROM
	GroupedSumProduct product

-- DuckDB
SELECT
	t1.Id,
	t1.Name
FROM
	GroupedSumProduct t1

-- DuckDB
SELECT
	t1.Id,
	t1.ProductId,
	t1.Quantity
FROM
	GroupedSumLineItem t1

