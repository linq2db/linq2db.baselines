-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $StartedOn Timestamp -- DateTime2
SET     $StartedOn = Timestamp('2026-01-01T10:00:00.000000Z')
DECLARE $FinishedOn Timestamp -- DateTime2
SET     $FinishedOn = Timestamp('2026-01-01T15:00:00.000000Z')

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
SET     $StartedOn = Timestamp('2026-01-01T10:00:00.000000Z')
DECLARE $FinishedOn Timestamp -- DateTime2
SET     $FinishedOn = Timestamp('2026-01-01T11:00:00.000000Z')

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
	x.Id as Id
FROM
	EventRow x
WHERE
	Unwrap(CAST(Unwrap(CAST(x.FinishedOn - x.StartedOn AS Int64)) * 10l AS Double)) / Double('36000000000') > Double('3')

-- YDB Ydb
SELECT
	x.Id as Id
FROM
	EventRow x
WHERE
	Unwrap(CAST(((Unwrap(CAST(x.FinishedOn - x.StartedOn AS Int64)) * 10l) / 36000000000l) % 24l AS Int32)) = 1

-- YDB Ydb
SELECT
	x.Id as Id
FROM
	EventRow x
ORDER BY
	Unwrap(CAST(x.FinishedOn - x.StartedOn AS Int64)) * 10l DESC

-- YDB Ydb
SELECT
	Unwrap(CAST(x.FinishedOn - x.StartedOn AS Int64)) * 10l as Taken
FROM
	EventRow x
ORDER BY
	x.Id

-- YDB Ydb
SELECT
	r.Id as Id,
	Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l as Taken
FROM
	EventRow r
ORDER BY
	r.Id

