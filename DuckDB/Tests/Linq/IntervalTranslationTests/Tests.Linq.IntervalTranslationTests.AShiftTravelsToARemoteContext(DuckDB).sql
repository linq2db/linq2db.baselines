-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $StartedOn  -- DateTime2
SET     $StartedOn = '2026-01-01 10:00:00.000000'::TIMESTAMP
DECLARE $FinishedOn  -- DateTime2
SET     $FinishedOn = '2026-01-01 15:00:00.000000'::TIMESTAMP

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
	r.Id
FROM
	EventRow r
WHERE
	CAST('2026-03-01 00:00:00.000000'::TIMESTAMP AS TIMESTAMP) + To_Microseconds((Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10) // 10) > '2026-03-01 04:00:00.000000'::TIMESTAMP

