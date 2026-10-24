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
	Unwrap(CAST(r.InSeconds / 86400l AS Int32)) as Days,
	Unwrap(CAST((r.InSeconds / 3600l) % 24l AS Int32)) as Hours,
	Unwrap(CAST((r.InSeconds / 60l) % 60l AS Int32)) as Minutes,
	Unwrap(CAST(r.InSeconds % 60l AS Int32)) as Seconds
FROM
	DurationRow r
LIMIT 2

