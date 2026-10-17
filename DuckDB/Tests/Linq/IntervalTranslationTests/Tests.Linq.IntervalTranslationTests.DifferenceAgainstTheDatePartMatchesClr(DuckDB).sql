-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $StartedOn  -- DateTime2
SET     $StartedOn = '2026-06-01 10:00:00.000000'::TIMESTAMP
DECLARE $FinishedOn  -- DateTime2
SET     $FinishedOn = '2026-06-01 15:00:00.000000'::TIMESTAMP

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
	CAST(Date_Diff('microsecond', CAST(r.FinishedOn AS DATE), r.FinishedOn) * 10 AS DOUBLE) / 36000000000
FROM
	EventRow r
LIMIT 2

