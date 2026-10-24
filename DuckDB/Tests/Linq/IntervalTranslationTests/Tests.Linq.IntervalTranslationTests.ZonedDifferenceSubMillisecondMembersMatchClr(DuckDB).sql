-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $StartedOn  -- DateTimeOffset
SET     $StartedOn = '2026-01-01 10:00:00+00'::TIMESTAMPTZ
DECLARE $FinishedOn  -- DateTimeOffset
SET     $FinishedOn = '2026-01-01 10:00:00.006456+00'::TIMESTAMPTZ

INSERT INTO ZonedEventRow
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
	r.StartedOn,
	r.FinishedOn
FROM
	ZonedEventRow r
LIMIT 2

-- DuckDB
SELECT
	CAST(((Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10) // 10) % 1000 AS INTEGER),
	CAST(((Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10) % 10) * 100 AS INTEGER),
	CAST(Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10 AS DOUBLE) / 10,
	CAST(Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10 AS DOUBLE) * 100
FROM
	ZonedEventRow r
LIMIT 2

