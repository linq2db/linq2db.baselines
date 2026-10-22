-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Value Datetime -- DateTime
SET     $Value = Timestamp('2026-06-01T10:00:00.000000Z')
DECLARE $Day Date
SET     $Day = Timestamp('2026-06-01T00:00:00.000000Z')
DECLARE $Wide Timestamp -- DateTime2
SET     $Wide = Timestamp('2026-06-01T10:00:00.000000Z')

INSERT INTO CoarseDateShapesRow
(
	Id,
	`Value`,
	`Day`,
	Wide
)
VALUES
(
	$Id,
	$Value,
	$Day,
	$Wide
)

-- YDB Ydb
SELECT
	DateTime::MakeTimestamp(DateTime::StartOfDay(DateTime::Split(r.`Value`))) as Date_1
FROM
	CoarseDateShapesRow r
UNION ALL
SELECT
	Unwrap(CAST(Timestamp('2026-06-01T00:00:00.000000Z') AS Timestamp)) as Date_1
FROM
	CoarseDateShapesRow r_1

