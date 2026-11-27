-- ClickHouse.Octonica ClickHouse
SELECT
	product.Id,
	(
		SELECT
			sumOrNull(t1.OnOrder)
		FROM
			(
				SELECT
					SUM(toDecimal128(testGroup.Quantity, 10)) as OnOrder
				FROM
					GroupedSumLineItem testGroup
				GROUP BY
					testGroup.Id
			) t1
	)
FROM
	GroupedSumProduct product

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.Name
FROM
	GroupedSumProduct t1

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.ProductId,
	t1.Quantity
FROM
	GroupedSumLineItem t1

