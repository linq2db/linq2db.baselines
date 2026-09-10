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
	t1.Id,
	t1.Taken
FROM
	(
		SELECT
			CAST(Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10 AS DOUBLE) / 36000000000 as TotalHours,
			r.Id,
			Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10 as Taken
		FROM
			EventRow r
	) t1
WHERE
	t1.TotalHours > 3
ORDER BY
	t1.Id

