-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.Int IS NULL

-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.Int IS NOT NULL

