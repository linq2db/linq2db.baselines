-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $InDays Int64
SET     $InDays = 0l
DECLARE $InMilliseconds Int64
SET     $InMilliseconds = 0l
DECLARE $InNanoseconds Int64
SET     $InNanoseconds = 7000000000l

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
	r.InNanoseconds as InNanoseconds
FROM
	UnitSpreadRow r
LIMIT 2

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.InDays as InDays,
	t1.InMilliseconds as InMilliseconds,
	t1.InNanoseconds as InNanoseconds
FROM
	UnitSpreadRow t1
LIMIT 2

