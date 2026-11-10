-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $StartedOn TIMESTAMP -- DateTime2
SET     $StartedOn = NULL
DECLARE $FinishedOn TIMESTAMP -- DateTime2
SET     $FinishedOn = '2026-01-03 13:30:00.000000'::TIMESTAMP

INSERT INTO OptionalEventRow
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
DECLARE $StartedOn TIMESTAMP -- DateTime2
SET     $StartedOn = '2026-01-01 10:00:00.000000'::TIMESTAMP
DECLARE $FinishedOn TIMESTAMP -- DateTime2
SET     $FinishedOn = NULL

INSERT INTO OptionalEventRow
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
SET     $Id = 3
DECLARE $StartedOn TIMESTAMP -- DateTime2
SET     $StartedOn = '2026-01-01 10:00:00.000000'::TIMESTAMP
DECLARE $FinishedOn TIMESTAMP -- DateTime2
SET     $FinishedOn = '2026-01-03 13:30:00.000000'::TIMESTAMP

INSERT INTO OptionalEventRow
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
	r.Id,
	CASE
		WHEN r.StartedOn IS NULL THEN NULL
		ELSE r.FinishedOn
	END,
	CASE
		WHEN r.FinishedOn IS NULL THEN NULL
		ELSE r.StartedOn
	END
FROM
	OptionalEventRow r
ORDER BY
	r.Id

