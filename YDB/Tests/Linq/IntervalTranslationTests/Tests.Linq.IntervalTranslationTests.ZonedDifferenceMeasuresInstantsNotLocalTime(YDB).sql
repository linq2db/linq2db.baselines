-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $StartedOn Timestamp -- DateTime2
SET     $StartedOn = Timestamp('2026-01-01T12:00:00.000000Z')
DECLARE $FinishedOn Timestamp -- DateTime2
SET     $FinishedOn = Timestamp('2026-01-01T12:00:00.000000Z')

INSERT INTO ZonedEventRow
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
DECLARE $Id Int32
SET     $Id = 2
DECLARE $StartedOn Timestamp -- DateTime2
SET     $StartedOn = Timestamp('2026-01-01T10:00:00.000000Z')
DECLARE $FinishedOn Timestamp -- DateTime2
SET     $FinishedOn = Timestamp('2026-01-01T12:00:00.000000Z')

INSERT INTO ZonedEventRow
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
	r.StartedOn as StartedOn,
	r.FinishedOn as FinishedOn
FROM
	ZonedEventRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l AS Double)) / Double('36000000000') as c1
FROM
	ZonedEventRow r
ORDER BY
	r.Id

