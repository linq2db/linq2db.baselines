-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $StartedOn  -- DateTime2
SET     $StartedOn = '2026-01-01 10:59:00.000000'::TIMESTAMP
DECLARE $FinishedOn  -- DateTime2
SET     $FinishedOn = '2026-01-01 11:01:00.000000'::TIMESTAMP

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
	CAST(Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10 AS DOUBLE) / 600000000,
	CAST(((Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10) // 600000000) % 60 AS INTEGER)
FROM
	EventRow r
LIMIT 2

