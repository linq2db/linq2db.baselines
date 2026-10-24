-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $StartedOn Timestamp -- DateTime2
SET     $StartedOn = Timestamp('1980-01-01T00:00:00.000000Z')
DECLARE $FinishedOn Timestamp -- DateTime2
SET     $FinishedOn = Timestamp('2060-01-01T12:00:00.000000Z')

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
DECLARE $early Timestamp -- DateTime2
SET     $early = Timestamp('1971-01-01T00:00:00.000000Z')
DECLARE $late Timestamp -- DateTime2
SET     $late = Timestamp('2100-01-01T00:00:00.000000Z')

SELECT
	Unwrap(CAST(Unwrap(CAST($early AS Timestamp)) + DateTime::IntervalFromMicroseconds((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 10l) AS Timestamp)) as Forward_1,
	Unwrap(CAST(Unwrap(CAST($late AS Timestamp)) + DateTime::IntervalFromMicroseconds(((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) * -1l) / 10l) AS Timestamp)) as Backward_1
FROM
	EventRow r
LIMIT 2

