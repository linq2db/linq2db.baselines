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
	CoarseNullableEventRow r
WHERE
	Coalesce(r.FinishedOn, r.StartedOn) < '2026-06-01 10:00:00.500000'::TIMESTAMP

-- DuckDB
SELECT
	COUNT(*)
FROM
	CoarseNullableEventRow r
WHERE
	'2026-06-01 10:00:00.500000'::TIMESTAMP > Coalesce(r.FinishedOn, r.StartedOn)

-- DuckDB
SELECT
	COUNT(*)
FROM
	CoarseNullableEventRow r
WHERE
	Coalesce(r.FinishedOn, r.StartedOn) = '2026-06-01 10:00:00.500000'::TIMESTAMP

