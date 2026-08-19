-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $StartedOn Timestamp -- DateTime2
SET     $StartedOn = Timestamp('2026-01-01T10:20:30.000000Z')
DECLARE $FinishedOn Timestamp -- DateTime2
SET     $FinishedOn = Timestamp('2026-01-01T10:20:30.123456Z')

INSERT INTO EventRow
(
	Id,
	StartedOn,
	FinishedOn
)
VALUES
(
	$Id,
	$StartedOn,
	$FinishedOn
)

-- YDB Ydb
SELECT
	r.FinishedOn as FinishedOn
FROM
	EventRow r
LIMIT 2

-- YDB Ydb
SELECT
	Unwrap(CAST(((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 10000l) % 1000l AS Int32)) as Milliseconds,
	Unwrap(CAST(((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 10000000l) % 60l AS Int32)) as Seconds
FROM
	EventRow r
LIMIT 2

