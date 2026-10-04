-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $StartedOn  -- DateTime
SET     $StartedOn = '2026-06-01 10:00:00.000000'::TIMESTAMP
DECLARE $FinishedOn  -- DateTime
SET     $FinishedOn = '2026-06-01 15:04:03.000000'::TIMESTAMP
DECLARE $OpenedOn  -- Date
SET     $OpenedOn = '2026-06-01 00:00:00.000000'::TIMESTAMP
DECLARE $ClosedOn  -- Date
SET     $ClosedOn = '2026-06-01 00:00:00.000000'::TIMESTAMP

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
	Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10
FROM
	CoarseEventRow r
LIMIT 2

