-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $StartedOn  -- DateTimeOffset
SET     $StartedOn = '2026-01-01 10:00:00+00'::TIMESTAMPTZ
DECLARE $FinishedOn  -- DateTimeOffset
SET     $FinishedOn = '2026-01-03 13:04:05.006000+00'::TIMESTAMPTZ

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
	CAST((Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10) // 864000000000 AS INTEGER),
	CAST(((Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10) // 36000000000) % 24 AS INTEGER),
	CAST(((Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10) // 600000000) % 60 AS INTEGER),
	CAST(((Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10) // 10000000) % 60 AS INTEGER),
	Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10,
	CAST(Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10 AS DOUBLE) / 864000000000,
	CAST(Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10 AS DOUBLE) / 36000000000,
	CAST(Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10 AS DOUBLE) / 600000000,
	CAST(Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10 AS DOUBLE) / 10000000,
	CAST(Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10 AS DOUBLE) / 10000
FROM
	ZonedEventRow r
LIMIT 2

