-- YDB Ydb
SELECT
	r.Dto as Dto
FROM
	ZonedRow r
LIMIT 2

-- YDB Ydb
SELECT
	DateTime::GetHour(r.Dto) as c1
FROM
	ZonedRow r
LIMIT 2

