-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $InSeconds Int64
SET     $InSeconds = 183845l
DECLARE $InTicks Int64
SET     $InTicks = 1838450000000l
DECLARE $Undeclared Int64
SET     $Undeclared = 1838450000000l
DECLARE $UndeclaredSeconds Int64
SET     $UndeclaredSeconds = 183845l

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
	Unwrap(CAST(Unwrap(CAST(r.InSeconds AS Int64)) * 10000000l AS Double)) / Double('36000000000') as TotalHours,
	Unwrap(CAST(((Unwrap(CAST(r.InSeconds AS Int64)) * 10000000l) / 36000000000l) % 24l AS Int32)) as Hours,
	Unwrap(CAST(Unwrap(CAST(r.InTicks AS Int64)) AS Double)) / Double('600000000') as TotalMinutes
FROM
	DurationRow r
LIMIT 2

