-- YDB Ydb

SELECT
	Unwrap(CAST(v.`Integer` AS Decimal(22,9))) / Decimal('33', 22, 9) as Integer_1,
	v.`Decimal` / Decimal('33', 10, 5) as Decimal_1,
	v.`Double` / Unwrap(CAST(Decimal('33', 22, 9) AS Double)) as Double_1
FROM
	Issue4469Table v
LIMIT 2

