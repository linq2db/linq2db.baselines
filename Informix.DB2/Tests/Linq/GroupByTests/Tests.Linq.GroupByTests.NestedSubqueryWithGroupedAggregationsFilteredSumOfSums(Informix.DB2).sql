-- Informix.DB2 Informix
SELECT
	product.Id,
	(
		SELECT
			SUM(t1.OnOrder)
		FROM
			(
				SELECT
					SUM(testGroup.Quantity::Decimal) as OnOrder
				FROM
					GroupedSumLineItem testGroup
				WHERE
					testGroup.ProductId = product.Id
				GROUP BY
					testGroup.Id
			) t1
	)
FROM
	GroupedSumProduct product

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.Name
FROM
	GroupedSumProduct t1

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.ProductId,
	t1.Quantity
FROM
	GroupedSumLineItem t1

