-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $StartedOn  -- DateTime
SET     $StartedOn = '2026-06-01 10:00:00.000000'::TIMESTAMP
DECLARE $FinishedOn  -- DateTime
SET     $FinishedOn = '2026-06-01 10:00:00.000000'::TIMESTAMP
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
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $StartedOn  -- DateTime
SET     $StartedOn = '2026-05-25 10:00:00.000000'::TIMESTAMP
DECLARE $FinishedOn  -- DateTime
SET     $FinishedOn = '2026-05-25 10:00:00.000000'::TIMESTAMP
DECLARE $OpenedOn  -- Date
SET     $OpenedOn = '2026-05-25 00:00:00.000000'::TIMESTAMP
DECLARE $ClosedOn  -- Date
SET     $ClosedOn = '2026-05-25 00:00:00.000000'::TIMESTAMP

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
	CAST(Floor(CAST(Date_Diff('microsecond', MIN(grp.StartedOn), MAX(grp.StartedOn)) * 10 AS DOUBLE) / 864000000000) AS INTEGER) + 1
FROM
	CoarseEventRow grp
LIMIT 2

