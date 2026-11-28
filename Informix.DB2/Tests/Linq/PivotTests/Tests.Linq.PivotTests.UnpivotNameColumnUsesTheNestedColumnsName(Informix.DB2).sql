-- Informix.DB2 Informix
SELECT
	row_1.Id,
	'ROOT_AMT'::NVarChar(255),
	row_1.ROOT_AMT
FROM
	NestedAmounts row_1
WHERE
	row_1.ROOT_AMT IS NOT NULL
UNION ALL
SELECT
	row_2.Id,
	'SHIP_AMT'::NVarChar(255),
	row_2.SHIP_AMT
FROM
	NestedAmounts row_2
WHERE
	row_2.SHIP_AMT IS NOT NULL
UNION ALL
SELECT
	row_3.Id,
	'BILL_AMT'::NVarChar(255),
	row_3.BILL_AMT
FROM
	NestedAmounts row_3
WHERE
	row_3.BILL_AMT IS NOT NULL

