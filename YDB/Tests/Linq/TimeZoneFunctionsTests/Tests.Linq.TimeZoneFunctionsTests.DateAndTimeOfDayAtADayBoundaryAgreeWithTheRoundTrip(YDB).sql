-- YDB Ydb
SELECT
	r.Dto as Dto
FROM
	ZonedRow r
LIMIT 2

-- YDB Ydb
SELECT
	DateTime::MakeTimestamp(DateTime::StartOfDay(DateTime::Split(r.Dto))) as Date_1,
	DateTime::TimeOfDay(r.Dto) as TimeOfDay
FROM
	ZonedRow r
LIMIT 2

