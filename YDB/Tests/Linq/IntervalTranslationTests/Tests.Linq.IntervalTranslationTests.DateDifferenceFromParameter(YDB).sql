-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $StartedOn Timestamp -- DateTime2
SET     $StartedOn = Timestamp('2026-01-01T10:00:00.000000Z')
DECLARE $FinishedOn Timestamp -- DateTime2
SET     $FinishedOn = Timestamp('2026-01-05T00:00:00.000000Z')

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
DECLARE $Id Int32
SET     $Id = 2
DECLARE $StartedOn Timestamp -- DateTime2
SET     $StartedOn = Timestamp('2026-01-03T00:00:00.000000Z')
DECLARE $FinishedOn Timestamp -- DateTime2
SET     $FinishedOn = Timestamp('2026-01-03T20:00:00.000000Z')

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
DECLARE $asOf Timestamp -- DateTime2
SET     $asOf = Timestamp('2026-01-03T13:30:00.000000Z')

SELECT
	r.Id as Id
FROM
	EventRow r
WHERE
	Unwrap(CAST(Unwrap(CAST($asOf - r.StartedOn AS Int64)) * 10l AS Double)) / Double('36000000000') > Double('24')

-- YDB Ydb
DECLARE $asOf Timestamp -- DateTime2
SET     $asOf = Timestamp('2026-01-03T13:30:00.000000Z')

SELECT
	r.Id as Id
FROM
	EventRow r
WHERE
	Unwrap(CAST(Unwrap(CAST(r.FinishedOn - $asOf AS Int64)) * 10l AS Double)) / Double('36000000000') > Double('24')

-- YDB Ydb
DECLARE $asOf Timestamp -- DateTime2
SET     $asOf = Timestamp('2026-01-03T13:30:00.000000Z')

SELECT
	r.Id as Id
FROM
	EventRow r
ORDER BY
	Unwrap(CAST(Unwrap(CAST($asOf - r.StartedOn AS Int64)) * 10l AS Double)) / Double('600000000')

-- YDB Ydb
DECLARE $asOf Timestamp -- DateTime2
SET     $asOf = Timestamp('2026-01-03T13:30:00.000000Z')

SELECT
	Unwrap(CAST(Unwrap(CAST($asOf - r.StartedOn AS Int64)) * 10l AS Double)) / Double('864000000000') as TotalDays,
	Unwrap(CAST(((Unwrap(CAST($asOf - r.StartedOn AS Int64)) * 10l) / 36000000000l) % 24l AS Int32)) as Hours
FROM
	EventRow r
WHERE
	r.Id = 1
LIMIT 2

