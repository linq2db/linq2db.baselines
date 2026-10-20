-- YDB Ydb
DECLARE $Ids0_1 Decimal(18, 12)
SET     $Ids0_1 = Decimal('1.000000000005', 22, 9)

SELECT
	COUNT(*) as Count_1
FROM
	ComputedDecimalRow r
WHERE
	Abs(r.Fine) IN ($Ids0_1)

-- YDB Ydb
DECLARE $Ids0_1 Decimal(18, 12)
SET     $Ids0_1 = Decimal('1.000000000005', 22, 9)

SELECT
	COUNT(*) as Count_1
FROM
	ComputedDecimalRow r
WHERE
	Abs(r.Fine) IN ($Ids0_1)

-- YDB Ydb
DECLARE $Ids0_1 Decimal(18, 2)
SET     $Ids0_1 = Decimal('12345678901234.50', 22, 9)

SELECT
	COUNT(*) as Count_1
FROM
	ComputedDecimalRow r
WHERE
	Abs(r.Wide) IN ($Ids0_1)

-- YDB Ydb
DECLARE $Ids0_1 Decimal(18, 2)
SET     $Ids0_1 = Decimal('12345678901234.50', 22, 9)

SELECT
	COUNT(*) as Count_1
FROM
	ComputedDecimalRow r
WHERE
	Abs(r.Wide) IN ($Ids0_1)

-- YDB Ydb
SELECT
	COUNT(*) as Count_1
FROM
	ComputedDecimalRow r
WHERE
	Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(r.Fine * Decimal('100', 18, 12) AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(18,12))) / Decimal('100', 18, 12) = Decimal('1.004', 18, 12)

-- YDB Ydb
DECLARE $Ids0_1 Decimal(4, 3)
SET     $Ids0_1 = Decimal('1.004', 22, 9)

SELECT
	COUNT(*) as Count_1
FROM
	ComputedDecimalRow r
WHERE
	Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(r.Fine * Decimal('100', 18, 12) AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(18,12))) / Decimal('100', 18, 12) IN ($Ids0_1)

-- YDB Ydb
DECLARE $Ids0_1 Decimal(4, 3)
SET     $Ids0_1 = Decimal('1.004', 22, 9)

SELECT
	COUNT(*) as Count_1
FROM
	ComputedDecimalRow r
WHERE
	Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(r.Fine * Decimal('100', 18, 12) AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(18,12))) / Decimal('100', 18, 12) IN ($Ids0_1)

