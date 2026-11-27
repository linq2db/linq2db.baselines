-- YDB Ydb
SELECT
	r.Dto as Dto
FROM
	ZonedRow r
LIMIT 2

-- YDB Ydb
DECLARE date Timestamp -- DateTime2
SET     date = Timestamp('2020-12-31T00:00:00.000000Z')

SELECT
	COUNT(*) as Count_1
FROM
	ZonedRow r
WHERE
	DateTime::MakeTimestamp(DateTime::StartOfDay(DateTime::Split(r.Dto))) = $date

-- YDB Ydb
DECLARE later Timestamp -- DateTime2
SET     later = Timestamp('2020-12-31T01:00:00.000000Z')

SELECT
	COUNT(*) as Count_1
FROM
	ZonedRow r
WHERE
	DateTime::MakeTimestamp(DateTime::StartOfDay(DateTime::Split(r.Dto))) = $later

