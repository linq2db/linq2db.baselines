-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $StartedOn Timestamp -- DateTime2
SET     $StartedOn = Timestamp('2026-01-03T13:30:00.000000Z')
DECLARE $FinishedOn Timestamp -- DateTime2
SET     $FinishedOn = Timestamp('2026-01-01T10:00:00.000000Z')

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
	Unwrap(CAST((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 864000000000l AS Int32)) as Days,
	Unwrap(CAST(((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 36000000000l) % 24l AS Int32)) as Hours,
	Unwrap(CAST(((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 600000000l) % 60l AS Int32)) as Minutes,
	Unwrap(CAST(Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l AS Double)) / Double('36000000000') as TotalHours
FROM
	EventRow r
LIMIT 2

