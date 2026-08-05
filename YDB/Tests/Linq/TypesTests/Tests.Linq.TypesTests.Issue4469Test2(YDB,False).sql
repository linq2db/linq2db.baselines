-- YDB Ydb
DECLARE $param Decimal(2, 0)
SET     $param = Decimal('33', 22, 9)
DECLARE $param_1 Decimal(10, 5)
SET     $param_1 = Decimal('33', 22, 9)

SELECT
	Unwrap(CAST(v.`Integer` AS Decimal(22,9))) / $param as Integer_1,
	v.`Decimal` / $param_1 as Decimal_1,
	v.`Double` / Unwrap(CAST($param AS Double)) as Double_1
FROM
	Issue4469Table v
LIMIT 2

