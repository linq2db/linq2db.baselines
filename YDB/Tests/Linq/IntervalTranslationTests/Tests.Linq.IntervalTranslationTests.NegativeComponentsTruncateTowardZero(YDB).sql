-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $InSeconds Int64
SET     $InSeconds = -90000l
DECLARE $InTicks Int64
SET     $InTicks = -900000000000l
DECLARE $Undeclared Int64
SET     $Undeclared = -900000000000l
DECLARE $UndeclaredSeconds Int64
SET     $UndeclaredSeconds = -90000l

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
	Unwrap(CAST(r.InSeconds / 86400l AS Int32)) as Days,
	Unwrap(CAST((r.InSeconds / 3600l) % 24l AS Int32)) as Hours,
	Unwrap(CAST(r.InSeconds AS Double)) / Double('3600') as TotalHours
FROM
	DurationRow r
LIMIT 2

