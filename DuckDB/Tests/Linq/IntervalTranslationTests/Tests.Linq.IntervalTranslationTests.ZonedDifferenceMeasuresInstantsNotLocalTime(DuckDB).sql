-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $StartedOn  -- DateTimeOffset
SET     $StartedOn = '2026-01-01 12:00:00+00'::TIMESTAMPTZ
DECLARE $FinishedOn  -- DateTimeOffset
SET     $FinishedOn = '2026-01-01 12:00:00+00'::TIMESTAMPTZ

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
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $StartedOn  -- DateTimeOffset
SET     $StartedOn = '2026-01-01 10:00:00+00'::TIMESTAMPTZ
DECLARE $FinishedOn  -- DateTimeOffset
SET     $FinishedOn = '2026-01-01 12:00:00+00'::TIMESTAMPTZ

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
ORDER BY
	r.Id

-- DuckDB
SELECT
	CAST(Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10 AS DOUBLE) / 36000000000
FROM
	ZonedEventRow r
ORDER BY
	r.Id

