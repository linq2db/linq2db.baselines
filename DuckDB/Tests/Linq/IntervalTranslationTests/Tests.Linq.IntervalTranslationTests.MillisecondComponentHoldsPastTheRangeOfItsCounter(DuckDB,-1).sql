-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $StartedOn TIMESTAMP -- DateTime2
SET     $StartedOn = '1970-02-03 04:05:06.780000'::TIMESTAMP
DECLARE $FinishedOn TIMESTAMP -- DateTime2
SET     $FinishedOn = '1970-01-02 00:00:00.000000'::TIMESTAMP

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
DECLARE $Id INTEGER -- Int32
SET     $Id = 2
DECLARE $StartedOn TIMESTAMP -- DateTime2
SET     $StartedOn = '2045-06-05 04:03:02.340000'::TIMESTAMP
DECLARE $FinishedOn TIMESTAMP -- DateTime2
SET     $FinishedOn = '1970-01-02 00:00:00.000000'::TIMESTAMP

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
DECLARE $Id INTEGER -- Int32
SET     $Id = 3
DECLARE $StartedOn TIMESTAMP -- DateTime2
SET     $StartedOn = '1970-01-02 00:02:05.250000'::TIMESTAMP
DECLARE $FinishedOn TIMESTAMP -- DateTime2
SET     $FinishedOn = '1970-01-02 00:00:00.000000'::TIMESTAMP

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
	r.StartedOn,
	r.FinishedOn
FROM
	EventRow r
ORDER BY
	r.Id

-- DuckDB
SELECT
	CAST(((Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10) // 10000) % 1000 AS INTEGER)
FROM
	EventRow r
ORDER BY
	r.Id

