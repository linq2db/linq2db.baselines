-- YDB Ydb

$CTE_1 = 	SELECT
		SUM(t1.OnOrder) as OnOrder
	FROM
		(
			SELECT
				SUM(Unwrap(CAST(testGroup.Quantity AS Decimal(22,9)))) as OnOrder
			FROM
				PurchaseOrderLineItem testGroup
			GROUP BY
				testGroup.Id
		) t1
;

SELECT
	product_1.Id as Id,
	$CTE_1 as OnOrder
FROM
	Product product_1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Name as Name
FROM
	Product t1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.ProductId as ProductId,
	t1.Quantity as Quantity
FROM
	PurchaseOrderLineItem t1

