-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.Enum IS NULL

-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.Enum IS NOT NULL

