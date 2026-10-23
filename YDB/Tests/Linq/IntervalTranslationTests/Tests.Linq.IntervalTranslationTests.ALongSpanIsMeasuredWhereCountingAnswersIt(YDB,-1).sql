-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $StartedOn Timestamp -- DateTime2
SET     $StartedOn = Timestamp('2045-06-05T04:03:02.000000Z')
DECLARE $FinishedOn Timestamp -- DateTime2
SET     $FinishedOn = Timestamp('1970-01-02T00:00:00.000000Z')

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
	Unwrap(CAST(Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l AS Double)) / Double('864000000000') as TotalDays,
	Unwrap(CAST(Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l AS Double)) / Double('36000000000') as TotalHours,
	Unwrap(CAST(Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l AS Double)) / Double('600000000') as TotalMinutes,
	Unwrap(CAST(Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l AS Double)) / Double('10000000') as TotalSeconds,
	Unwrap(CAST((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 864000000000l AS Int32)) as Days,
	Unwrap(CAST(((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 36000000000l) % 24l AS Int32)) as Hours,
	Unwrap(CAST(((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 600000000l) % 60l AS Int32)) as Minutes
FROM
	EventRow r
LIMIT 2

