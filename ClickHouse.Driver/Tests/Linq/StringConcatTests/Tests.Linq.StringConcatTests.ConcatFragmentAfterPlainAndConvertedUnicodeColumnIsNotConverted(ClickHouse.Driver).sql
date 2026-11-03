-- ClickHouse.Driver ClickHouse
SELECT
	concat(r.Plain, r.Conv, '-')
FROM
	PlainAndConvertedUnicodeRow r
LIMIT 2

