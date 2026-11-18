-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $StartedOn TIMESTAMP -- DateTime
SET     $StartedOn = '2026-06-01 10:00:00.000000'::TIMESTAMP
DECLARE $FinishedOn TIMESTAMP -- DateTime
SET     $FinishedOn = NULL

INSERT INTO CoarseNullableEventRow
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
DECLARE $Id INTEGER -- Int32
SET     $Id = 2
DECLARE $StartedOn TIMESTAMP -- DateTime
SET     $StartedOn = '2026-06-01 11:00:00.000000'::TIMESTAMP
DECLARE $FinishedOn TIMESTAMP -- DateTime
SET     $FinishedOn = '2026-06-01 13:00:00.000000'::TIMESTAMP

INSERT INTO CoarseNullableEventRow
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
	COUNT(*)
FROM
	(
		SELECT
			FIRST_VALUE(r.StartedOn) OVER (ORDER BY r.Id) as First_1
		FROM
			CoarseNullableEventRow r
	) t1
WHERE
	t1.First_1 < '2026-06-01 10:00:00.500000'::TIMESTAMP

