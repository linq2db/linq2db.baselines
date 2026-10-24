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
	Unwrap(CAST(r.`Value` AS Date)) as c1
FROM
	CoarseDateShapesRow r
UNION ALL
SELECT
	r_1.`Day` as c1
FROM
	CoarseDateShapesRow r_1

-- YDB Ydb
SELECT
	CASE
		WHEN r.Id > 0 THEN DateTime::MakeTimestamp(DateTime::StartOfDay(DateTime::Split(r.`Value`)))
		ELSE Unwrap(CAST(r.`Value` AS Date))
	END as c1
FROM
	CoarseDateShapesRow r

