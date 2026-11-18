-- ClickHouse.Driver ClickHouse
SELECT
	concat(r.Plain, r.Conv)
FROM
	PlainAndConvertedUnicodeRow r
ORDER BY
	r.Id
LIMIT 1

-- ClickHouse.Driver ClickHouse
SELECT
	COUNT(*)
FROM
	PlainAndConvertedUnicodeRow r
WHERE
	(concat(r.Plain, r.Conv)) = 'A-x:n1'

-- ClickHouse.Driver ClickHouse
SELECT
	COUNT(*)
FROM
	PlainAndConvertedUnicodeRow r
WHERE
	(concat(r.Plain, r.Conv)) <> 'A-x:n1'

-- ClickHouse.Driver ClickHouse
SELECT
	CASE
		WHEN 'A-x:n1' IN (
			SELECT
				concat(r.Plain, r.Conv)
			FROM
				PlainAndConvertedUnicodeRow r
		)
			THEN true
		ELSE false
	END

-- ClickHouse.Driver ClickHouse
SELECT
	COUNT(*)
FROM
	PlainAndConvertedUnicodeRow r
WHERE
	(concat(r.Plain, r.Conv)) IN ('A-x:n1')

