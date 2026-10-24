-- ClickHouse.Driver ClickHouse
SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.CEnum IS NULL

-- ClickHouse.Driver ClickHouse
SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.CEnum IS NOT NULL

