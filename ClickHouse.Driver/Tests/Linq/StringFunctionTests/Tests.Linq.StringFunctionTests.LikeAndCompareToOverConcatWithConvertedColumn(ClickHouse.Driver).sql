-- ClickHouse.Driver ClickHouse
SELECT
	concat(r.Plain, r.Conv)
FROM
	PlainAndConvertedUnicodeTable r
ORDER BY
	r.Id
LIMIT 1

-- ClickHouse.Driver ClickHouse
SELECT
	COUNT(*)
FROM
	PlainAndConvertedUnicodeTable r
WHERE
	(concat(r.Plain, r.Conv)) LIKE 'A-x:n1'

-- ClickHouse.Driver ClickHouse
SELECT
	COUNT(*)
FROM
	PlainAndConvertedUnicodeTable r
WHERE
	(concat(r.Plain, r.Conv)) = 'A-x:n1'

