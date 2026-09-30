-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $StartedOn  -- DateTime2
SET     $StartedOn = '2026-01-01 10:00:00.000000'::TIMESTAMP
DECLARE $FinishedOn  -- DateTime2
SET     $FinishedOn = '2026-01-05 00:00:00.000000'::TIMESTAMP

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
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $StartedOn  -- DateTime2
SET     $StartedOn = '2026-01-03 00:00:00.000000'::TIMESTAMP
DECLARE $FinishedOn  -- DateTime2
SET     $FinishedOn = '2026-01-03 20:00:00.000000'::TIMESTAMP

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
DECLARE $asOf  -- DateTime2
SET     $asOf = '2026-01-03 13:30:00.000000'::TIMESTAMP

SELECT
	r.Id
FROM
	EventRow r
WHERE
	CAST(Date_Diff('microsecond', r.StartedOn, CAST($asOf AS TIMESTAMP)) * 10 AS DOUBLE) / 36000000000 > 24

-- DuckDB
DECLARE $asOf  -- DateTime2
SET     $asOf = '2026-01-03 13:30:00.000000'::TIMESTAMP

SELECT
	r.Id
FROM
	EventRow r
WHERE
	CAST(Date_Diff('microsecond', CAST($asOf AS TIMESTAMP), r.FinishedOn) * 10 AS DOUBLE) / 36000000000 > 24

-- DuckDB
DECLARE $asOf  -- DateTime2
SET     $asOf = '2026-01-03 13:30:00.000000'::TIMESTAMP

SELECT
	r.Id
FROM
	EventRow r
ORDER BY
	CAST(Date_Diff('microsecond', r.StartedOn, CAST($asOf AS TIMESTAMP)) * 10 AS DOUBLE) / 600000000

-- DuckDB
DECLARE $asOf  -- DateTime2
SET     $asOf = '2026-01-03 13:30:00.000000'::TIMESTAMP

SELECT
	CAST(Date_Diff('microsecond', r.StartedOn, CAST($asOf AS TIMESTAMP)) * 10 AS DOUBLE) / 864000000000,
	CAST(((Date_Diff('microsecond', r.StartedOn, CAST($asOf AS TIMESTAMP)) * 10) // 36000000000) % 24 AS INTEGER)
FROM
	EventRow r
WHERE
	r.Id = 1
LIMIT 2

