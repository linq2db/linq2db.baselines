-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $StartedOn  -- DateTime2
SET     $StartedOn = '2026-01-01 10:00:00.000000'::TIMESTAMP
DECLARE $FinishedOn  -- DateTime2
SET     $FinishedOn = '2026-01-01 10:00:00.006456'::TIMESTAMP

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
	CAST(((Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10) // 10) % 1000 AS INTEGER)
FROM
	EventRow r

-- DuckDB
SELECT
	CAST(((Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10) // 10) % 1000 AS INTEGER)
FROM
	EventRow r
WHERE
	r.Id > 0
UNION ALL
SELECT
	CAST(((Date_Diff('microsecond', r_1.StartedOn, r_1.FinishedOn) * 10) // 10) % 1000 AS INTEGER)
FROM
	EventRow r_1
WHERE
	r_1.Id <= 0

