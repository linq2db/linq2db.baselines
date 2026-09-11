-- YDB Ydb
DECLARE $param Double
SET     $param = Double('33')

SELECT
	Unwrap(CAST(v.`Integer` AS Double)) / $param as Integer_1,
	Unwrap(CAST(v.`Decimal` AS Double)) / $param as Decimal_1,
	v.`Double` / $param as Double_1
FROM
	Issue4469Table v
LIMIT 2

