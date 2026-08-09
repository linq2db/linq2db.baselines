-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $InSeconds Int64
SET     $InSeconds = 1l
DECLARE $InTicks Int64
SET     $InTicks = 12345670l
DECLARE $Undeclared Int64
SET     $Undeclared = 12345670l
DECLARE $UndeclaredSeconds Int64
SET     $UndeclaredSeconds = 1l

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
	Unwrap(CAST((Unwrap(CAST(r.InTicks AS Int64)) / 10000l) % 1000l AS Int32)) as Milliseconds,
	Unwrap(CAST((Unwrap(CAST(r.InTicks AS Int64)) / 10l) % 1000l AS Int32)) as Microseconds
FROM
	DurationRow r
LIMIT 2

