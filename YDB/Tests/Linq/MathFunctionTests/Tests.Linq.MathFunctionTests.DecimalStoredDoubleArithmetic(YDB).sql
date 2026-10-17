-- YDB Ydb
SELECT
	r.M * Decimal('2.5', 22, 9) as Product,
	Unwrap(CAST(r.M AS Double)) + r.F as Sum_1
FROM
	DecimalStoredDouble r
ORDER BY
	r.Id

