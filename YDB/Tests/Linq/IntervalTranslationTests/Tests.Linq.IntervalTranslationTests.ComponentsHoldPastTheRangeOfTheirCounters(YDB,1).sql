-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $StartedOn Timestamp -- DateTime2
SET     $StartedOn = Timestamp('1970-01-02T00:00:00.000000Z')
DECLARE $FinishedOn Timestamp -- DateTime2
SET     $FinishedOn = Timestamp('2045-06-05T04:03:02.000000Z')

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
DECLARE $Id Int32
SET     $Id = 2
DECLARE $StartedOn Timestamp -- DateTime2
SET     $StartedOn = Timestamp('1970-01-02T00:00:00.000000Z')
DECLARE $FinishedOn Timestamp -- DateTime2
SET     $FinishedOn = Timestamp('1970-01-02T00:02:05.000000Z')

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
	Unwrap(CAST(((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 36000000000l) % 24l AS Int32)) as c1
FROM
	EventRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 600000000l) % 60l AS Int32)) as c1
FROM
	EventRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 10000000l) % 60l AS Int32)) as c1
FROM
	EventRow r
ORDER BY
	r.Id

