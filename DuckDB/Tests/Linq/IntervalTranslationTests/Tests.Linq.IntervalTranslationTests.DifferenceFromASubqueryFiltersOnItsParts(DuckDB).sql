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
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $StartedOn  -- DateTime2
SET     $StartedOn = '2026-01-01 10:00:00.000000'::TIMESTAMP
DECLARE $FinishedOn  -- DateTime2
SET     $FinishedOn = '2026-01-01 11:00:00.000000'::TIMESTAMP

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
	x.Id
FROM
	EventRow x
WHERE
	CAST(Date_Diff('microsecond', x.StartedOn, x.FinishedOn) * 10 AS DOUBLE) / 36000000000 > 3

-- DuckDB
SELECT
	x.Id
FROM
	EventRow x
WHERE
	CAST(((Date_Diff('microsecond', x.StartedOn, x.FinishedOn) * 10) // 36000000000) % 24 AS INTEGER) = 1

-- DuckDB
SELECT
	x.Id
FROM
	EventRow x
ORDER BY
	Date_Diff('microsecond', x.StartedOn, x.FinishedOn) * 10 DESC

-- DuckDB
SELECT
	Date_Diff('microsecond', x.StartedOn, x.FinishedOn) * 10
FROM
	EventRow x
ORDER BY
	x.Id

-- DuckDB
SELECT
	r.Id,
	Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10
FROM
	EventRow r
ORDER BY
	r.Id

