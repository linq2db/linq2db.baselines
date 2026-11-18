-- ClickHouse.Octonica ClickHouse
SELECT
	concat(r.Plain, r.Conv)
FROM
	PlainAndConvertedUnicodeRow r
ORDER BY
	r.Id
LIMIT 1

-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	PlainAndConvertedUnicodeRow r
WHERE
	(concat(r.Plain, r.Conv)) = 'A-x:n1'

-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	PlainAndConvertedUnicodeRow r
WHERE
	(concat(r.Plain, r.Conv)) <> 'A-x:n1'

-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	PlainAndConvertedUnicodeRow r
WHERE
	(concat(r.Plain, r.Conv)) IN ('A-x:n1')

