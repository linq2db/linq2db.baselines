-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $StartedOn  -- DateTime2
SET     $StartedOn = '2026-01-03 13:30:00.000000'::TIMESTAMP
DECLARE $FinishedOn  -- DateTime2
SET     $FinishedOn = '2026-01-01 10:00:00.000000'::TIMESTAMP

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
	CAST((Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10) // 864000000000 AS INTEGER),
	CAST(((Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10) // 36000000000) % 24 AS INTEGER),
	CAST(((Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10) // 600000000) % 60 AS INTEGER),
	CAST(Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10 AS DOUBLE) / 36000000000
FROM
	EventRow r
LIMIT 2

