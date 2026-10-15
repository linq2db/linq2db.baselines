-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $StartedOn Timestamp -- DateTime2
SET     $StartedOn = Timestamp('2026-06-01T10:00:00.000000Z')
DECLARE $FinishedOn Timestamp -- DateTime2
SET     $FinishedOn = Timestamp('2026-06-01T15:00:00.000000Z')

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
	Unwrap(CAST(Unwrap(CAST(r.FinishedOn - DateTime::MakeTimestamp(DateTime::StartOfDay(DateTime::Split(r.FinishedOn))) AS Int64)) * 10l AS Double)) / Double('36000000000') as c1
FROM
	EventRow r
LIMIT 2

