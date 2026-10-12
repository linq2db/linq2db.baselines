-- YDB Ydb
SELECT
	row_1.Id as Id,
	Unwrap(CAST('ROOT_AMT'u AS Text)) as Name,
	row_1.ROOT_AMT as ROOT_AMT
FROM
	NestedAmounts row_1
WHERE
	row_1.ROOT_AMT IS NOT NULL
UNION ALL
SELECT
	row_2.Id as Id,
	Unwrap(CAST('SHIP_AMT'u AS Text)) as Name,
	row_2.SHIP_AMT as ROOT_AMT
FROM
	NestedAmounts row_2
WHERE
	row_2.SHIP_AMT IS NOT NULL
UNION ALL
SELECT
	row_3.Id as Id,
	Unwrap(CAST('BILL_AMT'u AS Text)) as Name,
	row_3.BILL_AMT as ROOT_AMT
FROM
	NestedAmounts row_3
WHERE
	row_3.BILL_AMT IS NOT NULL

