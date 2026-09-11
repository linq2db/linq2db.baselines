-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $StartedOn  -- DateTime2
SET     $StartedOn = '2026-01-01 10:20:30.000000'::TIMESTAMP
DECLARE $FinishedOn  -- DateTime2
SET     $FinishedOn = '2026-01-01 10:20:30.123456'::TIMESTAMP

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

-- DuckDB
SELECT
	r.FinishedOn
FROM
	EventRow r
LIMIT 2

-- DuckDB
SELECT
	CAST(((Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10) // 10000) % 1000 AS INTEGER),
	CAST(((Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10) // 10000000) % 60 AS INTEGER)
FROM
	EventRow r
LIMIT 2

