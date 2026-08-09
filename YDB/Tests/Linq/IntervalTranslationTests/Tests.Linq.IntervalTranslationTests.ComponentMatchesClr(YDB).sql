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
	Unwrap(CAST((Unwrap(CAST(r.InSeconds AS Int64)) * 10000000l) / 864000000000l AS Int32)) as Days,
	Unwrap(CAST(((Unwrap(CAST(r.InSeconds AS Int64)) * 10000000l) / 36000000000l) % 24l AS Int32)) as Hours,
	Unwrap(CAST(((Unwrap(CAST(r.InSeconds AS Int64)) * 10000000l) / 600000000l) % 60l AS Int32)) as Minutes,
	Unwrap(CAST(((Unwrap(CAST(r.InSeconds AS Int64)) * 10000000l) / 10000000l) % 60l AS Int32)) as Seconds
FROM
	DurationRow r
LIMIT 2

