-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $InDays Int64
SET     $InDays = 2l
DECLARE $InMilliseconds Int64
SET     $InMilliseconds = 3723456l
DECLARE $InNanoseconds Int64
SET     $InNanoseconds = 7000123400l

INSERT INTO UnitSpreadRow
(
	Id,
	InDays,
	InMilliseconds,
	InNanoseconds
)
VALUES
(
	$Id,
	$InDays,
	$InMilliseconds,
	$InNanoseconds
)

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.InDays as InDays,
	t1.InMilliseconds as InMilliseconds,
	t1.InNanoseconds as InNanoseconds
FROM
	UnitSpreadRow t1
LIMIT 2

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.InDays AS Int64)) * 864000000000l AS Double)) / Double('36000000000') as DayHours,
	Unwrap(CAST(((Unwrap(CAST(r.InMilliseconds AS Int64)) * 10000l) / 10000000l) % 60l AS Int32)) as MillisecondSecond
FROM
	UnitSpreadRow r
LIMIT 2

