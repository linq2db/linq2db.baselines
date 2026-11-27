-- YDB Ydb
SELECT
	r.Dto as Dto
FROM
	ZonedRow r
LIMIT 2

-- YDB Ydb
SELECT
	DateTime::MakeTimestamp(DateTime::StartOfDay(DateTime::Split(r.Dto))) as c1
FROM
	ZonedRow r
LIMIT 2

-- YDB Ydb
SELECT DISTINCT
	DateTime::MakeTimestamp(DateTime::StartOfDay(DateTime::Split(g_1.Dto))) as Key_1
FROM
	ZonedRow g_1
LIMIT 2

