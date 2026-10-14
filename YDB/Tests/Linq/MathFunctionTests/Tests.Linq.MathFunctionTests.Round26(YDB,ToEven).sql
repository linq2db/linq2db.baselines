-- YDB Ydb
DECLARE $maxId Int32
SET     $maxId = 4

SELECT
	Ensure(Unwrap(CAST(r.D AS Decimal(4,4))) - Unwrap(CAST(r.D AS Decimal(4,4))), Unwrap(CAST(r.D AS Decimal(4,4))) <= Decimal('0.5', 4, 4) AND Unwrap(CAST(r.D AS Decimal(4,4))) >= Decimal('-0.5', 4, 4), 'ROUND result is out of range for Decimal(4,4)'u) as c1
FROM
	RoundDynamicNoIntegerDigits r
WHERE
	r.Id <= $maxId
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $maxId Int32
SET     $maxId = 4

SELECT
	Unwrap(CAST(Ensure(Unwrap(CAST(r.D AS Decimal(5,5))) * Decimal('0.1', 5, 5) - Unwrap(CAST(r.D AS Decimal(5,5))) * Decimal('0.1', 5, 5), Unwrap(CAST(r.D AS Decimal(5,5))) * Decimal('0.1', 5, 5) <= Decimal('0.5', 5, 5) AND Unwrap(CAST(r.D AS Decimal(5,5))) * Decimal('0.1', 5, 5) >= Decimal('-0.5', 5, 5), 'ROUND result is out of range for Decimal(5,5)'u) / Decimal('0.1', 5, 5) AS Decimal(4,4))) as c1
FROM
	RoundDynamicNoIntegerDigits r
WHERE
	r.Id <= $maxId
ORDER BY
	r.Id

