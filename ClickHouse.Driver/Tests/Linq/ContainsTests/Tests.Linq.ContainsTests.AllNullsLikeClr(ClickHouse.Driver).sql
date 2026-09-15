-- ClickHouse.Driver ClickHouse
SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.Int IS NULL

-- ClickHouse.Driver ClickHouse
SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.Int IS NOT NULL

