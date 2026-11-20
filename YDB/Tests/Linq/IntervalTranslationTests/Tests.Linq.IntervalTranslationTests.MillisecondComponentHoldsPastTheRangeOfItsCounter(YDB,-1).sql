-- YDB Ydb
DECLARE Id Int32
SET     Id = 1
DECLARE StartedOn Timestamp -- DateTime2
SET     StartedOn = Timestamp('1970-02-03T04:05:06.780000Z')
DECLARE FinishedOn Timestamp -- DateTime2
SET     FinishedOn = Timestamp('1970-01-02T00:00:00.000000Z')

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

-- YDB Ydb
DECLARE Id Int32
SET     Id = 2
DECLARE StartedOn Timestamp -- DateTime2
SET     StartedOn = Timestamp('2045-06-05T04:03:02.340000Z')
DECLARE FinishedOn Timestamp -- DateTime2
SET     FinishedOn = Timestamp('1970-01-02T00:00:00.000000Z')

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

-- YDB Ydb
DECLARE Id Int32
SET     Id = 3
DECLARE StartedOn Timestamp -- DateTime2
SET     StartedOn = Timestamp('1970-01-02T00:02:05.250000Z')
DECLARE FinishedOn Timestamp -- DateTime2
SET     FinishedOn = Timestamp('1970-01-02T00:00:00.000000Z')

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

-- YDB Ydb
SELECT
	r.StartedOn as StartedOn,
	r.FinishedOn as FinishedOn
FROM
	EventRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l / 10000l % 1000l AS Int32)) as c1
FROM
	EventRow r
ORDER BY
	r.Id

