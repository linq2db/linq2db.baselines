-- ClickHouse.Driver ClickHouse
SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.Enum IS NULL

-- ClickHouse.Driver ClickHouse
SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.Enum IS NOT NULL

