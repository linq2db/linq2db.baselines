-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $StartedOn  -- DateTime2
SET     $StartedOn = '1970-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $FinishedOn  -- DateTime2
SET     $FinishedOn = '2045-06-05 04:03:02.000000'::TIMESTAMP

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
SET     $StartedOn = '1970-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $FinishedOn  -- DateTime2
SET     $FinishedOn = '1970-01-02 00:02:05.000000'::TIMESTAMP

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
	CAST(((Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10) // 36000000000) % 24 AS INTEGER)
FROM
	EventRow r
ORDER BY
	r.Id

-- DuckDB
SELECT
	CAST(((Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10) // 600000000) % 60 AS INTEGER)
FROM
	EventRow r
ORDER BY
	r.Id

-- DuckDB
SELECT
	CAST(((Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10) // 10000000) % 60 AS INTEGER)
FROM
	EventRow r
ORDER BY
	r.Id

