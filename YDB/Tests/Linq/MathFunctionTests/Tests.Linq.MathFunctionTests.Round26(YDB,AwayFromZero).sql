-- YDB Ydb
DECLARE $maxId Int32
SET     $maxId = 2

SELECT
	Ensure(Unwrap(CAST(r.D AS Decimal(4,4))) - Unwrap(CAST(r.D AS Decimal(4,4))), Unwrap(CAST(r.D AS Decimal(4,4))) < Decimal('0.5', 4, 4) AND Unwrap(CAST(r.D AS Decimal(4,4))) > Decimal('-0.5', 4, 4), 'ROUND result is out of range for Decimal(4,4)'u) as c1
FROM
	RoundDynamicNoIntegerDigits r
WHERE
	r.Id <= $maxId
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $maxId Int32
SET     $maxId = 2

SELECT
	Ensure(r.D - r.D, r.D < Decimal('1', 35, 0) AND r.D > Decimal('-1', 35, 0), 'ROUND value is out of range for Decimal(4,4)'u) as c1
FROM
	RoundDynamicNoIntegerDigits r
WHERE
	r.Id <= $maxId
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $id Int32
SET     $id = 3

SELECT
	Ensure(Unwrap(CAST(r.D AS Decimal(4,4))) - Unwrap(CAST(r.D AS Decimal(4,4))), Unwrap(CAST(r.D AS Decimal(4,4))) < Decimal('0.5', 4, 4) AND Unwrap(CAST(r.D AS Decimal(4,4))) > Decimal('-0.5', 4, 4), 'ROUND result is out of range for Decimal(4,4)'u) as c1
FROM
	RoundDynamicNoIntegerDigits r
WHERE
	r.Id = $id

-- YDB Ydb
DECLARE $id Int32
SET     $id = 4

SELECT
	Ensure(Unwrap(CAST(r.D AS Decimal(4,4))) - Unwrap(CAST(r.D AS Decimal(4,4))), Unwrap(CAST(r.D AS Decimal(4,4))) < Decimal('0.5', 4, 4) AND Unwrap(CAST(r.D AS Decimal(4,4))) > Decimal('-0.5', 4, 4), 'ROUND result is out of range for Decimal(4,4)'u) as c1
FROM
	RoundDynamicNoIntegerDigits r
WHERE
	r.Id = $id

