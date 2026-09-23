-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $StartedOn  -- DateTime
SET     $StartedOn = '2026-06-01 10:00:00.000000'::TIMESTAMP
DECLARE $FinishedOn  -- DateTime
SET     $FinishedOn = '2026-06-12 10:00:00.000000'::TIMESTAMP
DECLARE $OpenedOn  -- Date
SET     $OpenedOn = '2026-06-01 00:00:00.000000'::TIMESTAMP
DECLARE $ClosedOn  -- Date
SET     $ClosedOn = '2026-06-12 00:00:00.000000'::TIMESTAMP

INSERT INTO CoarseEventRow
(
	Id,
	StartedOn,
	FinishedOn,
	OpenedOn,
	ClosedOn
)
VALUES
(
	$Id,
	$StartedOn,
	$FinishedOn,
	$OpenedOn,
	$ClosedOn
)

-- DuckDB
SELECT
	r.OpenedOn,
	r.ClosedOn
FROM
	CoarseEventRow r
LIMIT 2

-- DuckDB
SELECT
	Date_Diff('microsecond', r.OpenedOn, r.ClosedOn) * 10
FROM
	CoarseEventRow r
LIMIT 2

