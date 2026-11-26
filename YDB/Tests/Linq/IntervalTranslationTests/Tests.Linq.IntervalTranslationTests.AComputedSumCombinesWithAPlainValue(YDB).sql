-- YDB Ydb
DECLARE Id Int32
SET     Id = 1
DECLARE InSeconds Int64
SET     InSeconds = 5400l
DECLARE InTicks Int64
SET     InTicks = 54000000000l
DECLARE Undeclared Int64
SET     Undeclared = 54000000000l
DECLARE UndeclaredSeconds Int64
SET     UndeclaredSeconds = 5400l

INSERT INTO DurationRow
(
	Id,
	InSeconds,
	InTicks,
	Undeclared,
	UndeclaredSeconds
)
VALUES
(
	$Id,
	$InSeconds,
	$InTicks,
	$Undeclared,
	$UndeclaredSeconds
)

-- YDB Ydb
DECLARE Ticks Int64
SET     Ticks = 3000000000l

SELECT
	Unwrap(CAST(Unwrap(CAST(r.InSeconds * 10000000l + r.InTicks AS Int64)) + $Ticks AS Int64)) as SumPlusValue,
	Unwrap(CAST($Ticks + Unwrap(CAST(r.InSeconds * 10000000l + r.InTicks AS Int64)) AS Int64)) as ValuePlusSum,
	Unwrap(CAST(Unwrap(CAST(r.InSeconds * 10000000l + r.InTicks AS Int64)) - $Ticks AS Int64)) as SumLessValue
FROM
	DurationRow r
LIMIT 2

-- YDB Ydb
DECLARE Ticks Int64
SET     Ticks = 108000000000l

SELECT
	COUNT(*) as Count_1
FROM
	DurationRow r
WHERE
	Unwrap(CAST(r.InSeconds * 10000000l + r.InTicks AS Int64)) = $Ticks

