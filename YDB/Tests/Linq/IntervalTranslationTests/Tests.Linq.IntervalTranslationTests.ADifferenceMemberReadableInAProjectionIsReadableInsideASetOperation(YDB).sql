-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $StartedOn Timestamp -- DateTime2
SET     $StartedOn = Timestamp('2026-01-01T10:00:00.000000Z')
DECLARE $FinishedOn Timestamp -- DateTime2
SET     $FinishedOn = Timestamp('2026-01-01T10:00:00.006456Z')

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
	Unwrap(CAST(((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 10l) % 1000l AS Int32)) as Microseconds
FROM
	EventRow r

-- YDB Ydb
SELECT
	Unwrap(CAST(((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 10l) % 1000l AS Int32)) as c1
FROM
	EventRow r
WHERE
	r.Id > 0
UNION ALL
SELECT
	Unwrap(CAST(((Unwrap(CAST(r_1.FinishedOn - r_1.StartedOn AS Int64)) * 10l) / 10l) % 1000l AS Int32)) as c1
FROM
	EventRow r_1
WHERE
	r_1.Id <= 0

