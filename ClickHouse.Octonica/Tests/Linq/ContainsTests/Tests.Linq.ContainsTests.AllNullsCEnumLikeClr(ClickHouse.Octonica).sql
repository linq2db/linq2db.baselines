-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.CEnum IS NULL

-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.CEnum IS NOT NULL

