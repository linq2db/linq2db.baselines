-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $InSeconds Int64
SET     $InSeconds = 10800l
DECLARE $InTicks Int64
SET     $InTicks = 108000000000l
DECLARE $Undeclared Int64
SET     $Undeclared = 108000000000l
DECLARE $UndeclaredSeconds Int64
SET     $UndeclaredSeconds = 10800l

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
SELECT
	Unwrap(CAST(r.InSeconds AS Double)) / Double('3600') as TotalHours,
	Unwrap(CAST(r.InTicks AS Double)) / Double('36000000000') as TotalHours_1
FROM
	DurationRow r
LIMIT 2

