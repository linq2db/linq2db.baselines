-- YDB Ydb
$CTE_1 = 	SELECT
		SUM(t1.OnOrder) as OnOrder
	FROM
		(
			SELECT
				SUM(Unwrap(CAST(testGroup.Quantity AS Decimal(22,9)))) as OnOrder
			FROM
				GroupedSumLineItem testGroup
			GROUP BY
				testGroup.Id
		) t1
;

SELECT
	product.Id as Id,
	$CTE_1 as OnOrder
FROM
	GroupedSumProduct product

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Name as Name
FROM
	GroupedSumProduct t1

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.ProductId as ProductId,
	t1.Quantity as Quantity
FROM
	GroupedSumLineItem t1

