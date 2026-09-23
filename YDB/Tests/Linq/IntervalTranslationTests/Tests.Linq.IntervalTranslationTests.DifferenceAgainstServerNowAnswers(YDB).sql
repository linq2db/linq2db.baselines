-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $StartedOn Timestamp -- DateTime2
SET     $StartedOn = Timestamp('2025-06-01T10:00:00.000000Z')
DECLARE $FinishedOn Timestamp -- DateTime2
SET     $FinishedOn = Timestamp('2025-06-01T10:00:00.000000Z')

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
	COUNT(*) as Count_1
FROM
	EventRow r
WHERE
	Unwrap(CAST(Unwrap(CAST(CurrentUtcTimestamp() - r.StartedOn AS Int64)) * 10l AS Double)) / Double('864000000000') > Double('1')

