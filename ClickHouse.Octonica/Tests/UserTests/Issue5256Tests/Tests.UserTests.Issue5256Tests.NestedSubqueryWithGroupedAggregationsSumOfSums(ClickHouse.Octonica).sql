-- ClickHouse.Octonica ClickHouse

SELECT
	product_1.Id,
	(
		SELECT
			sumOrNull(t1.OnOrder)
		FROM
			(
				SELECT
					SUM(toDecimal128(testGroup.Quantity, 10)) as OnOrder
				FROM
					PurchaseOrderLineItem testGroup
				GROUP BY
					testGroup.Id
			) t1
	)
FROM
	Product product_1

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Name
FROM
	Product t1

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.ProductId,
	t1.Quantity
FROM
	PurchaseOrderLineItem t1

