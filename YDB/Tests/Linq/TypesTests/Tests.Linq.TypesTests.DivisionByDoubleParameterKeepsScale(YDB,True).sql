-- YDB Ydb
SELECT
	Unwrap(CAST(v.`Integer` AS Double)) / Double('33') as Integer_1,
	Unwrap(CAST(v.`Decimal` AS Double)) / Double('33') as Decimal_1,
	v.`Double` / Double('33') as Double_1
FROM
	NumericDivisionTable v
LIMIT 2

