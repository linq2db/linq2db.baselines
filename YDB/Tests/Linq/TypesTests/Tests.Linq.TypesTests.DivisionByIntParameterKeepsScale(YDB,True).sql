-- YDB Ydb
SELECT
	v.`Integer` / 33 as Integer_1,
	v.`Decimal` / 33 as Decimal_1,
	v.`Double` / 33 as Double_1
FROM
	NumericDivisionTable v
LIMIT 2

